
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_object_t ;
struct TYPE_5__ {scalar_t__ object; size_t psind; scalar_t__ dirty; scalar_t__ valid; } ;


 int PS_ALL_DIRTY ;
 int PS_ALL_VALID ;
 int PS_NONE_BUSY ;
 int VM_OBJECT_ASSERT_LOCKED (scalar_t__) ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int atop (int ) ;
 int * pagesizes ;
 scalar_t__ vm_page_busied (TYPE_1__*) ;

bool
vm_page_ps_test(vm_page_t m, int flags, vm_page_t skip_m)
{
 vm_object_t object;
 int i, npages;

 object = m->object;
 if (skip_m != ((void*)0) && skip_m->object != object)
  return (0);
 VM_OBJECT_ASSERT_LOCKED(object);
 npages = atop(pagesizes[m->psind]);






 for (i = 0; i < npages; i++) {

  if (m[i].object != object)
   return (0);
  if (&m[i] == skip_m)
   continue;
  if ((flags & PS_NONE_BUSY) != 0 && vm_page_busied(&m[i]))
   return (0);
  if ((flags & PS_ALL_DIRTY) != 0) {






   if (m[i].dirty != VM_PAGE_BITS_ALL)
    return (0);
  }
  if ((flags & PS_ALL_VALID) != 0 &&
      m[i].valid != VM_PAGE_BITS_ALL)
   return (0);
 }
 return (1);
}
