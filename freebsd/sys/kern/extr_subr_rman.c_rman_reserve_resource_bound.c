
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int rm_mtx; int rm_list; int rm_descr; } ;
struct resource {int dummy; } ;
struct resource_i {int r_end; int r_start; int r_flags; struct resource r_r; int * r_sharehead; struct rman* r_rm; int * r_dev; } ;
typedef int rman_res_t ;
typedef int * device_t ;


 int DPRINTF (char*) ;
 int KASSERT (int,char*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct resource_i*,int ) ;
 int M_NOWAIT ;
 int M_RMAN ;
 int M_ZERO ;
 unsigned long long RF_ALIGNMENT (int) ;
 int RF_ALLOCATED ;
 int RF_FIRSTSHARE ;
 int RF_SHAREABLE ;
 int RM_MAX_END ;
 scalar_t__ SHARE_TYPE (int) ;
 struct resource_i* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,struct resource_i*,struct resource_i*,int ) ;
 int TAILQ_INSERT_BEFORE (struct resource_i*,struct resource_i*,int ) ;
 struct resource_i* TAILQ_NEXT (struct resource_i*,int ) ;
 char* device_get_nameunit (int *) ;
 int free (struct resource_i*,int ) ;
 struct resource_i* int_alloc_resource (int) ;
 int * malloc (int,int ,int) ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int r_link ;
 int r_sharelink ;
 int ummax (int,int) ;
 int ummin (int,int) ;

struct resource *
rman_reserve_resource_bound(struct rman *rm, rman_res_t start, rman_res_t end,
       rman_res_t count, rman_res_t bound, u_int flags,
       device_t dev)
{
 u_int new_rflags;
 struct resource_i *r, *s, *rv;
 rman_res_t rstart, rend, amask, bmask;

 rv = ((void*)0);

 DPRINTF(("rman_reserve_resource_bound: <%s> request: [%#jx, %#jx], "
        "length %#jx, flags %x, device %s\n", rm->rm_descr, start, end,
        count, flags,
        dev == ((void*)0) ? "<null>" : device_get_nameunit(dev)));
 KASSERT((flags & RF_FIRSTSHARE) == 0,
     ("invalid flags %#x", flags));
 new_rflags = (flags & ~RF_FIRSTSHARE) | RF_ALLOCATED;

 mtx_lock(rm->rm_mtx);

 r = TAILQ_FIRST(&rm->rm_list);
 if (r == ((void*)0)) {
     DPRINTF(("NULL list head\n"));
 } else {
     DPRINTF(("rman_reserve_resource_bound: trying %#jx <%#jx,%#jx>\n",
      r->r_end, start, count-1));
 }
 for (r = TAILQ_FIRST(&rm->rm_list);
      r && r->r_end < start + count - 1;
      r = TAILQ_NEXT(r, r_link)) {
  ;
  DPRINTF(("rman_reserve_resource_bound: tried %#jx <%#jx,%#jx>\n",
   r->r_end, start, count-1));
 }

 if (r == ((void*)0)) {
  DPRINTF(("could not find a region\n"));
  goto out;
 }

 amask = (1ull << RF_ALIGNMENT(flags)) - 1;
 KASSERT(start <= RM_MAX_END - amask,
     ("start (%#jx) + amask (%#jx) would wrap around", start, amask));


 bmask = ~(bound - 1);



 for (s = r; s; s = TAILQ_NEXT(s, r_link)) {
  DPRINTF(("considering [%#jx, %#jx]\n", s->r_start, s->r_end));




  if (s->r_start > end - (count - 1)) {
   DPRINTF(("s->r_start (%#jx) + count - 1> end (%#jx)\n",
       s->r_start, end));
   break;
  }
  if (s->r_start > RM_MAX_END - amask) {
   DPRINTF(("s->r_start (%#jx) + amask (%#jx) too large\n",
       s->r_start, amask));
   break;
  }
  if (s->r_flags & RF_ALLOCATED) {
   DPRINTF(("region is allocated\n"));
   continue;
  }
  rstart = ummax(s->r_start, start);





  do {
   rstart = (rstart + amask) & ~amask;
   if (((rstart ^ (rstart + count - 1)) & bmask) != 0)
    rstart += bound - (rstart & ~bmask);
  } while ((rstart & amask) != 0 && rstart < end &&
      rstart < s->r_end);
  rend = ummin(s->r_end, ummax(rstart + count - 1, end));
  if (rstart > rend) {
   DPRINTF(("adjusted start exceeds end\n"));
   continue;
  }
  DPRINTF(("truncated region: [%#jx, %#jx]; size %#jx (requested %#jx)\n",
         rstart, rend, (rend - rstart + 1), count));

  if ((rend - rstart + 1) >= count) {
   DPRINTF(("candidate region: [%#jx, %#jx], size %#jx\n",
          rstart, rend, (rend - rstart + 1)));
   if ((s->r_end - s->r_start + 1) == count) {
    DPRINTF(("candidate region is entire chunk\n"));
    rv = s;
    rv->r_flags = new_rflags;
    rv->r_dev = dev;
    goto out;
   }
   rv = int_alloc_resource(M_NOWAIT);
   if (rv == ((void*)0))
    goto out;
   rv->r_start = rstart;
   rv->r_end = rstart + count - 1;
   rv->r_flags = new_rflags;
   rv->r_dev = dev;
   rv->r_rm = rm;

   if (s->r_start < rv->r_start && s->r_end > rv->r_end) {
    DPRINTF(("splitting region in three parts: "
           "[%#jx, %#jx]; [%#jx, %#jx]; [%#jx, %#jx]\n",
           s->r_start, rv->r_start - 1,
           rv->r_start, rv->r_end,
           rv->r_end + 1, s->r_end));



    r = int_alloc_resource(M_NOWAIT);
    if (r == ((void*)0)) {
     free(rv, M_RMAN);
     rv = ((void*)0);
     goto out;
    }
    r->r_start = rv->r_end + 1;
    r->r_end = s->r_end;
    r->r_flags = s->r_flags;
    r->r_rm = rm;
    s->r_end = rv->r_start - 1;
    TAILQ_INSERT_AFTER(&rm->rm_list, s, rv,
           r_link);
    TAILQ_INSERT_AFTER(&rm->rm_list, rv, r,
           r_link);
   } else if (s->r_start == rv->r_start) {
    DPRINTF(("allocating from the beginning\n"));



    s->r_start = rv->r_end + 1;
    TAILQ_INSERT_BEFORE(s, rv, r_link);
   } else {
    DPRINTF(("allocating at the end\n"));



    s->r_end = rv->r_start - 1;
    TAILQ_INSERT_AFTER(&rm->rm_list, s, rv,
           r_link);
   }
   goto out;
  }
 }
 DPRINTF(("no unshared regions found\n"));
 if ((flags & RF_SHAREABLE) == 0)
  goto out;

 for (s = r; s && s->r_end <= end; s = TAILQ_NEXT(s, r_link)) {
  if (SHARE_TYPE(s->r_flags) == SHARE_TYPE(flags) &&
      s->r_start >= start &&
      (s->r_end - s->r_start + 1) == count &&
      (s->r_start & amask) == 0 &&
      ((s->r_start ^ s->r_end) & bmask) == 0) {
   rv = int_alloc_resource(M_NOWAIT);
   if (rv == ((void*)0))
    goto out;
   rv->r_start = s->r_start;
   rv->r_end = s->r_end;
   rv->r_flags = new_rflags;
   rv->r_dev = dev;
   rv->r_rm = rm;
   if (s->r_sharehead == ((void*)0)) {
    s->r_sharehead = malloc(sizeof *s->r_sharehead,
      M_RMAN, M_NOWAIT | M_ZERO);
    if (s->r_sharehead == ((void*)0)) {
     free(rv, M_RMAN);
     rv = ((void*)0);
     goto out;
    }
    LIST_INIT(s->r_sharehead);
    LIST_INSERT_HEAD(s->r_sharehead, s,
       r_sharelink);
    s->r_flags |= RF_FIRSTSHARE;
   }
   rv->r_sharehead = s->r_sharehead;
   LIST_INSERT_HEAD(s->r_sharehead, rv, r_sharelink);
   goto out;
  }
 }




out:
 mtx_unlock(rm->rm_mtx);
 return (rv == ((void*)0) ? ((void*)0) : &rv->r_r);
}
