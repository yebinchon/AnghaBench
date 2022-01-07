
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ flags; int pidx_head; int pidx_tail; int state; } ;
typedef int uint16_t ;
struct mp_ring {int size; int enqueues; int state; int * items; int drops; } ;


 scalar_t__ BUSY ;
 int ENOBUFS ;
 scalar_t__ IDLE ;
 int MPASS (int) ;
 scalar_t__ STALLED ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ atomic_fcmpset_64 (int *,int *,int ) ;
 scalar_t__ atomic_fcmpset_rel_64 (int *,int *,int ) ;
 int counter_u64_add (int ,int) ;
 int cpu_spinwait () ;
 int critical_enter () ;
 int critical_exit () ;
 int drain_ring (struct mp_ring*,union ring_state,scalar_t__,int) ;
 int increment_idx (struct mp_ring*,int,int) ;
 int mp_ring_check_drainage (struct mp_ring*,int ) ;
 int space_available (struct mp_ring*,union ring_state) ;

int
mp_ring_enqueue(struct mp_ring *r, void **items, int n, int budget)
{
 union ring_state os, ns;
 uint16_t pidx_start, pidx_stop;
 int i;

 MPASS(items != ((void*)0));
 MPASS(n > 0);





 os.state = r->state;
 for (;;) {
  if (n >= space_available(r, os)) {
   counter_u64_add(r->drops, n);
   MPASS(os.flags != IDLE);
   if (os.flags == STALLED)
    mp_ring_check_drainage(r, 0);
   return (ENOBUFS);
  }
  ns.state = os.state;
  ns.pidx_head = increment_idx(r, os.pidx_head, n);
  critical_enter();
  if (atomic_fcmpset_64(&r->state, &os.state, ns.state))
   break;
  critical_exit();
  cpu_spinwait();
 }
 pidx_start = os.pidx_head;
 pidx_stop = ns.pidx_head;






 while (ns.pidx_tail != pidx_start) {
  cpu_spinwait();
  ns.state = r->state;
 }


 i = pidx_start;
 do {
  r->items[i] = *items++;
  if (__predict_false(++i == r->size))
   i = 0;
 } while (i != pidx_stop);





 os.state = r->state;
 do {
  ns.state = os.state;
  ns.pidx_tail = pidx_stop;
  ns.flags = BUSY;
 } while (atomic_fcmpset_rel_64(&r->state, &os.state, ns.state) == 0);
 critical_exit();
 counter_u64_add(r->enqueues, n);





 if (os.flags != BUSY)
  drain_ring(r, ns, os.flags, budget);

 return (0);
}
