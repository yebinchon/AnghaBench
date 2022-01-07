
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct TYPE_4__ {int flags; int ref_count; int * object; } ;


 int KASSERT (int,char*) ;
 int PG_FICTITIOUS ;
 int VM_OBJECT_ASSERT_LOCKED (int *) ;
 scalar_t__ VPRC_WIRE_COUNT (int ) ;
 scalar_t__ VPRC_WIRE_COUNT_MAX ;
 int atomic_fetchadd_int (int *,int) ;
 int vm_page_busied (TYPE_1__*) ;
 int vm_wire_add (int) ;

void
vm_page_wire(vm_page_t m)
{
 u_int old;

 KASSERT(m->object != ((void*)0),
     ("vm_page_wire: page %p does not belong to an object", m));
 if (!vm_page_busied(m))
  VM_OBJECT_ASSERT_LOCKED(m->object);
 KASSERT((m->flags & PG_FICTITIOUS) == 0 ||
     VPRC_WIRE_COUNT(m->ref_count) >= 1,
     ("vm_page_wire: fictitious page %p has zero wirings", m));

 old = atomic_fetchadd_int(&m->ref_count, 1);
 KASSERT(VPRC_WIRE_COUNT(old) != VPRC_WIRE_COUNT_MAX,
     ("vm_page_wire: counter overflow for page %p", m));
 if (VPRC_WIRE_COUNT(old) == 0)
  vm_wire_add(1);
}
