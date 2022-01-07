
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ uint8_t ;
typedef int u_int ;
struct TYPE_10__ {int oflags; scalar_t__ ref_count; } ;


 int KASSERT (int,char*) ;
 scalar_t__ PQ_ACTIVE ;
 scalar_t__ PQ_COUNT ;
 int VPO_UNMANAGED ;
 int VPRC_WIRE_COUNT (int) ;
 int atomic_fcmpset_rel_int (int*,int*,int) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_mvqueue (TYPE_1__*,scalar_t__) ;
 scalar_t__ vm_page_queue (TYPE_1__*) ;
 int vm_page_reference (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 scalar_t__ vm_page_unwire_noq (TYPE_1__*) ;
 int vm_wire_sub (int) ;

void
vm_page_unwire(vm_page_t m, uint8_t queue)
{
 u_int old;
 bool locked;

 KASSERT(queue < PQ_COUNT,
     ("vm_page_unwire: invalid queue %u request for page %p", queue, m));

 if ((m->oflags & VPO_UNMANAGED) != 0) {
  if (vm_page_unwire_noq(m) && m->ref_count == 0)
   vm_page_free(m);
  return;
 }







 old = m->ref_count;
 locked = 0;
 do {
  KASSERT(VPRC_WIRE_COUNT(old) > 0,
      ("vm_page_unwire: wire count underflow for page %p", m));
  if (!locked && VPRC_WIRE_COUNT(old) == 1) {
   vm_page_lock(m);
   locked = 1;
   if (queue == PQ_ACTIVE && vm_page_queue(m) == PQ_ACTIVE)
    vm_page_reference(m);
   else
    vm_page_mvqueue(m, queue);
  }
 } while (!atomic_fcmpset_rel_int(&m->ref_count, &old, old - 1));






 if (locked)
  vm_page_unlock(m);

 if (VPRC_WIRE_COUNT(old) == 1) {
  vm_wire_sub(1);
  if (old == 1)
   vm_page_free(m);
 }
}
