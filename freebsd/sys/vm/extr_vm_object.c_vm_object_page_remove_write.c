
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_5__ {int aflags; scalar_t__ dirty; } ;


 int FALSE ;
 int OBJPC_NOSYNC ;
 int PGA_NOSYNC ;
 int pmap_remove_write (TYPE_1__*) ;
 int vm_page_assert_busied (TYPE_1__*) ;

__attribute__((used)) static boolean_t
vm_object_page_remove_write(vm_page_t p, int flags, boolean_t *allclean)
{

 vm_page_assert_busied(p);






 if ((flags & OBJPC_NOSYNC) != 0 && (p->aflags & PGA_NOSYNC) != 0) {
  *allclean = FALSE;
  return (FALSE);
 } else {
  pmap_remove_write(p);
  return (p->dirty != 0);
 }
}
