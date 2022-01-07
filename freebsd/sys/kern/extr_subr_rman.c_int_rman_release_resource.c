
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int rm_list; } ;
struct resource_i {int r_flags; scalar_t__ r_end; scalar_t__ r_start; int * r_dev; struct resource_i* r_sharehead; } ;


 struct resource_i* LIST_FIRST (struct resource_i*) ;
 int * LIST_NEXT (struct resource_i*,int ) ;
 int LIST_REMOVE (struct resource_i*,int ) ;
 int M_RMAN ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int RF_FIRSTSHARE ;
 int TAILQ_INSERT_BEFORE (struct resource_i*,struct resource_i*,int ) ;
 struct resource_i* TAILQ_NEXT (struct resource_i*,int ) ;
 struct resource_i* TAILQ_PREV (struct resource_i*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct resource_i*,int ) ;
 int free (struct resource_i*,int ) ;
 int r_link ;
 int r_sharelink ;
 int resource_head ;

__attribute__((used)) static int
int_rman_release_resource(struct rman *rm, struct resource_i *r)
{
 struct resource_i *s, *t;

 if (r->r_flags & RF_ACTIVE)
  r->r_flags &= ~RF_ACTIVE;





 if (r->r_sharehead) {






  LIST_REMOVE(r, r_sharelink);
  s = LIST_FIRST(r->r_sharehead);
  if (r->r_flags & RF_FIRSTSHARE) {
   s->r_flags |= RF_FIRSTSHARE;
   TAILQ_INSERT_BEFORE(r, s, r_link);
   TAILQ_REMOVE(&rm->rm_list, r, r_link);
  }





  if (LIST_NEXT(s, r_sharelink) == ((void*)0)) {
   free(s->r_sharehead, M_RMAN);
   s->r_sharehead = ((void*)0);
   s->r_flags &= ~RF_FIRSTSHARE;
  }
  goto out;
 }







 s = TAILQ_PREV(r, resource_head, r_link);
 if (s != ((void*)0) && ((s->r_flags & RF_ALLOCATED) != 0 ||
     s->r_end + 1 != r->r_start))
  s = ((void*)0);
 t = TAILQ_NEXT(r, r_link);
 if (t != ((void*)0) && ((t->r_flags & RF_ALLOCATED) != 0 ||
     r->r_end + 1 != t->r_start))
  t = ((void*)0);

 if (s != ((void*)0) && t != ((void*)0)) {



  s->r_end = t->r_end;
  TAILQ_REMOVE(&rm->rm_list, r, r_link);
  TAILQ_REMOVE(&rm->rm_list, t, r_link);
  free(t, M_RMAN);
 } else if (s != ((void*)0)) {



  s->r_end = r->r_end;
  TAILQ_REMOVE(&rm->rm_list, r, r_link);
 } else if (t != ((void*)0)) {



  t->r_start = r->r_start;
  TAILQ_REMOVE(&rm->rm_list, r, r_link);
 } else {
  r->r_flags &= ~RF_ALLOCATED;
  r->r_dev = ((void*)0);
  return 0;
 }

out:
 free(r, M_RMAN);
 return 0;
}
