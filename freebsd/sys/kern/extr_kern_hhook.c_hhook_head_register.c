
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hhook_head {uintptr_t hhh_vid; int hhh_refcount; int hhh_flags; int hhh_hooks; scalar_t__ hhh_nhooks; void* hhh_id; void* hhh_type; } ;
typedef void* int32_t ;


 int EEXIST ;
 int ENOMEM ;
 int HHHLIST_LOCK () ;
 int HHHLIST_UNLOCK () ;
 int HHH_ISINVNET ;
 int HHH_LOCK_INIT (struct hhook_head*) ;
 int HHOOK_HEADISINVNET ;
 int HHOOK_WAITOK ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct hhook_head*,int ) ;
 int M_HHOOK ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int V_hhook_vhead_list ;
 int * curvnet ;
 int hhh_next ;
 int hhh_vnext ;
 struct hhook_head* hhook_head_get (void*,void*) ;
 int hhook_head_list ;
 int hhook_head_release (struct hhook_head*) ;
 int khelp_new_hhook_registered (struct hhook_head*,int) ;
 struct hhook_head* malloc (int,int ,int) ;
 int n_hhookheads ;
 int refcount_init (int *,int) ;
 int refcount_release (int *) ;

int
hhook_head_register(int32_t hhook_type, int32_t hhook_id, struct hhook_head **hhh,
    uint32_t flags)
{
 struct hhook_head *tmphhh;

 tmphhh = hhook_head_get(hhook_type, hhook_id);

 if (tmphhh != ((void*)0)) {

  hhook_head_release(tmphhh);
  return (EEXIST);
 }

 tmphhh = malloc(sizeof(struct hhook_head), M_HHOOK,
     M_ZERO | ((flags & HHOOK_WAITOK) ? M_WAITOK : M_NOWAIT));

 if (tmphhh == ((void*)0))
  return (ENOMEM);

 tmphhh->hhh_type = hhook_type;
 tmphhh->hhh_id = hhook_id;
 tmphhh->hhh_nhooks = 0;
 STAILQ_INIT(&tmphhh->hhh_hooks);
 HHH_LOCK_INIT(tmphhh);
 refcount_init(&tmphhh->hhh_refcount, 1);

 HHHLIST_LOCK();
 if (flags & HHOOK_HEADISINVNET) {
  tmphhh->hhh_flags |= HHH_ISINVNET;





 }
 LIST_INSERT_HEAD(&hhook_head_list, tmphhh, hhh_next);
 n_hhookheads++;
 HHHLIST_UNLOCK();

 khelp_new_hhook_registered(tmphhh, flags);

 if (hhh != ((void*)0))
  *hhh = tmphhh;
 else
  refcount_release(&tmphhh->hhh_refcount);

 return (0);
}
