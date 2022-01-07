
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_3__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_6__ {scalar_t__ writemappings; } ;
struct TYPE_7__ {TYPE_1__ swp; } ;
struct TYPE_8__ {scalar_t__ charge; struct ucred* cred; void* handle; TYPE_2__ un_pager; } ;


 int OBJT_SWAP ;
 int OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_MASK ;
 int crhold (struct ucred*) ;
 int swap_reserve_by_cred (scalar_t__,struct ucred*) ;
 TYPE_3__* vm_object_allocate (int ,int ) ;

__attribute__((used)) static vm_object_t
swap_pager_alloc_init(void *handle, struct ucred *cred, vm_ooffset_t size,
    vm_ooffset_t offset)
{
 vm_object_t object;

 if (cred != ((void*)0)) {
  if (!swap_reserve_by_cred(size, cred))
   return (((void*)0));
  crhold(cred);
 }






 object = vm_object_allocate(OBJT_SWAP, OFF_TO_IDX(offset +
     PAGE_MASK + size));

 object->un_pager.swp.writemappings = 0;
 object->handle = handle;
 if (cred != ((void*)0)) {
  object->cred = cred;
  object->charge = size;
 }
 return (object);
}
