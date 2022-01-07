
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
typedef int op ;
struct TYPE_7__ {int oflags; int ref_count; int * object; } ;


 int KASSERT (int,char*) ;
 int VM_OBJECT_ASSERT_LOCKED (int *) ;
 int VM_OBJECT_WOWNED (int *) ;
 int VPO_UNMANAGED ;
 int VPRC_BLOCKED ;
 int VPRC_OBJREF ;
 scalar_t__ VPRC_WIRE_COUNT (int) ;
 int atomic_fcmpset_int (int*,int*,int) ;
 int vm_page_busied (TYPE_1__*) ;
 int vm_page_drop (TYPE_1__*,int) ;

__attribute__((used)) static bool
vm_page_try_blocked_op(vm_page_t m, void (*op)(vm_page_t))
{
 u_int old;

 KASSERT(m->object != ((void*)0) && (m->oflags & VPO_UNMANAGED) == 0,
     ("vm_page_try_blocked_op: page %p has no object", m));
 KASSERT(vm_page_busied(m),
     ("vm_page_try_blocked_op: page %p is not busy", m));
 VM_OBJECT_ASSERT_LOCKED(m->object);

 old = m->ref_count;
 do {
  KASSERT(old != 0,
      ("vm_page_try_blocked_op: page %p has no references", m));
  if (VPRC_WIRE_COUNT(old) != 0)
   return (0);
 } while (!atomic_fcmpset_int(&m->ref_count, &old, old | VPRC_BLOCKED));

 (op)(m);





 old = vm_page_drop(m, VPRC_BLOCKED);
 KASSERT(!VM_OBJECT_WOWNED(m->object) ||
     old == (VPRC_BLOCKED | VPRC_OBJREF),
     ("vm_page_try_blocked_op: unexpected refcount value %u for %p",
     old, m));
 return (1);
}
