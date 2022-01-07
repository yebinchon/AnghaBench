
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef int vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_8__ {scalar_t__ size; void* handle; } ;


 int OBJT_PHYS ;
 int OBJ_POPULATE ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pager_object_list ;
 int phys_pager_mtx ;
 int phys_pager_object_list ;
 TYPE_1__* vm_object_allocate (int ,scalar_t__) ;
 int vm_object_deallocate (TYPE_1__*) ;
 int vm_object_set_flag (TYPE_1__*,int ) ;
 TYPE_1__* vm_pager_object_lookup (int *,void*) ;

__attribute__((used)) static vm_object_t
phys_pager_alloc(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t foff, struct ucred *cred)
{
 vm_object_t object, object1;
 vm_pindex_t pindex;




 if (foff & PAGE_MASK)
  return (((void*)0));

 pindex = OFF_TO_IDX(foff + PAGE_MASK + size);

 if (handle != ((void*)0)) {
  mtx_lock(&phys_pager_mtx);



  object1 = ((void*)0);
  object = vm_pager_object_lookup(&phys_pager_object_list, handle);
  if (object == ((void*)0)) {



   mtx_unlock(&phys_pager_mtx);
   object1 = vm_object_allocate(OBJT_PHYS, pindex);
   mtx_lock(&phys_pager_mtx);
   object = vm_pager_object_lookup(&phys_pager_object_list,
       handle);
   if (object != ((void*)0)) {




    if (pindex > object->size)
     object->size = pindex;
   } else {
    object = object1;
    object1 = ((void*)0);
    object->handle = handle;
    vm_object_set_flag(object, OBJ_POPULATE);
    TAILQ_INSERT_TAIL(&phys_pager_object_list,
        object, pager_object_list);
   }
  } else {
   if (pindex > object->size)
    object->size = pindex;
  }
  mtx_unlock(&phys_pager_mtx);
  vm_object_deallocate(object1);
 } else {
  object = vm_object_allocate(OBJT_PHYS, pindex);
  vm_object_set_flag(object, OBJ_POPULATE);
 }

 return (object);
}
