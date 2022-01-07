
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct TYPE_3__ {int ref_count; } ;


 int KASSERT (int,char*) ;
 int VPRC_BLOCKED ;
 scalar_t__ VPRC_WIRE_COUNT (int) ;
 int atomic_fcmpset_int (int*,int*,int) ;
 int vm_wire_add (int) ;

bool
vm_page_wire_mapped(vm_page_t m)
{
 u_int old;

 old = m->ref_count;
 do {
  KASSERT(old > 0,
      ("vm_page_wire_mapped: wiring unreferenced page %p", m));
  if ((old & VPRC_BLOCKED) != 0)
   return (0);
 } while (!atomic_fcmpset_int(&m->ref_count, &old, old + 1));

 if (VPRC_WIRE_COUNT(old) == 0)
  vm_wire_add(1);
 return (1);
}
