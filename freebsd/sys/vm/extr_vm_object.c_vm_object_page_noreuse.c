
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct mtx {int dummy; } ;
struct TYPE_12__ {int flags; scalar_t__ resident_page_count; } ;
struct TYPE_11__ {scalar_t__ pindex; } ;


 int KASSERT (int,char*) ;
 int OBJ_FICTITIOUS ;
 int OBJ_UNMANAGED ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (TYPE_2__*) ;
 int listq ;
 int mtx_unlock (struct mtx*) ;
 int vm_page_change_lock (TYPE_1__*,struct mtx**) ;
 int vm_page_deactivate_noreuse (TYPE_1__*) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;

void
vm_object_page_noreuse(vm_object_t object, vm_pindex_t start, vm_pindex_t end)
{
 struct mtx *mtx;
 vm_page_t p, next;

 VM_OBJECT_ASSERT_LOCKED(object);
 KASSERT((object->flags & (OBJ_FICTITIOUS | OBJ_UNMANAGED)) == 0,
     ("vm_object_page_noreuse: illegal object %p", object));
 if (object->resident_page_count == 0)
  return;
 p = vm_page_find_least(object, start);





 mtx = ((void*)0);
 for (; p != ((void*)0) && (p->pindex < end || end == 0); p = next) {
  next = TAILQ_NEXT(p, listq);
  vm_page_change_lock(p, &mtx);
  vm_page_deactivate_noreuse(p);
 }
 if (mtx != ((void*)0))
  mtx_unlock(mtx);
}
