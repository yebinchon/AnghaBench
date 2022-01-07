
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* vm_pindex_t ;
struct md_s {int type; int mediasize; int flags; int pp; TYPE_1__* object; int cred; } ;
struct md_req {int md_mediasize; int md_options; } ;
struct TYPE_6__ {void* size; void* charge; } ;


 int EDOM ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 void* IDX_TO_OFF (void*) ;

 int MD_RESERVE ;


 void* OFF_TO_IDX (int ) ;
 int PAGE_SIZE ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int g_resize_provider (int ,int) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int round_page (int) ;
 int swap_pager_freespace (TYPE_1__*,void*,void*) ;
 int swap_pager_reserve (TYPE_1__*,void*,void*) ;
 int swap_release_by_cred (void*,int ) ;
 int swap_reserve_by_cred (void*,int ) ;
 int vm_object_page_remove (TYPE_1__*,void*,int ,int ) ;

__attribute__((used)) static int
mdresize(struct md_s *sc, struct md_req *mdr)
{
 int error, res;
 vm_pindex_t oldpages, newpages;

 switch (sc->type) {
 case 128:
 case 130:
  break;
 case 129:
  if (mdr->md_mediasize <= 0 ||
      (mdr->md_mediasize % PAGE_SIZE) != 0)
   return (EDOM);
  oldpages = OFF_TO_IDX(round_page(sc->mediasize));
  newpages = OFF_TO_IDX(round_page(mdr->md_mediasize));
  if (newpages < oldpages) {
   VM_OBJECT_WLOCK(sc->object);
   vm_object_page_remove(sc->object, newpages, 0, 0);
   swap_pager_freespace(sc->object, newpages,
       oldpages - newpages);
   swap_release_by_cred(IDX_TO_OFF(oldpages -
       newpages), sc->cred);
   sc->object->charge = IDX_TO_OFF(newpages);
   sc->object->size = newpages;
   VM_OBJECT_WUNLOCK(sc->object);
  } else if (newpages > oldpages) {
   res = swap_reserve_by_cred(IDX_TO_OFF(newpages -
       oldpages), sc->cred);
   if (!res)
    return (ENOMEM);
   if ((mdr->md_options & MD_RESERVE) ||
       (sc->flags & MD_RESERVE)) {
    error = swap_pager_reserve(sc->object,
        oldpages, newpages - oldpages);
    if (error < 0) {
     swap_release_by_cred(
         IDX_TO_OFF(newpages - oldpages),
         sc->cred);
     return (EDOM);
    }
   }
   VM_OBJECT_WLOCK(sc->object);
   sc->object->charge = IDX_TO_OFF(newpages);
   sc->object->size = newpages;
   VM_OBJECT_WUNLOCK(sc->object);
  }
  break;
 default:
  return (EOPNOTSUPP);
 }

 sc->mediasize = mdr->md_mediasize;
 g_topology_lock();
 g_resize_provider(sc->pp, sc->mediasize);
 g_topology_unlock();
 return (0);
}
