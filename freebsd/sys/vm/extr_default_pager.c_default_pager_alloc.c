
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_4__ {scalar_t__ charge; struct ucred* cred; } ;


 int OBJT_DEFAULT ;
 int OFF_TO_IDX (int ) ;
 int crhold (struct ucred*) ;
 int panic (char*) ;
 int round_page (scalar_t__) ;
 int swap_reserve_by_cred (scalar_t__,struct ucred*) ;
 TYPE_1__* vm_object_allocate (int ,int ) ;

__attribute__((used)) static vm_object_t
default_pager_alloc(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t offset, struct ucred *cred)
{
 vm_object_t object;

 if (handle != ((void*)0))
  panic("default_pager_alloc: handle specified");
 if (cred != ((void*)0)) {
  if (!swap_reserve_by_cred(size, cred))
   return (((void*)0));
  crhold(cred);
 }
 object = vm_object_allocate(OBJT_DEFAULT,
     OFF_TO_IDX(round_page(offset + size)));
 if (cred != ((void*)0)) {
  object->cred = cred;
  object->charge = size;
 }
 return (object);
}
