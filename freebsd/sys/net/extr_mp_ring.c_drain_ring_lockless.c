
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ cidx; scalar_t__ pidx_tail; scalar_t__ flags; int state; } ;
typedef scalar_t__ uint16_t ;
struct ifmp_ring {int (* drain ) (struct ifmp_ring*,scalar_t__,scalar_t__) ;int restarts; int abdications; int state; int stalls; int starts; } ;


 scalar_t__ ABDICATED ;
 scalar_t__ BUSY ;
 scalar_t__ IDLE ;
 int MPASS (int) ;
 scalar_t__ STALLED ;
 scalar_t__ atomic_fcmpset_64 (int *,int *,int ) ;
 scalar_t__ atomic_fcmpset_acq_64 (int *,int *,int ) ;
 int counter_u64_add (int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 scalar_t__ increment_idx (struct ifmp_ring*,scalar_t__,int) ;
 scalar_t__ state_to_flags (union ring_state,int) ;
 int stub1 (struct ifmp_ring*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
drain_ring_lockless(struct ifmp_ring *r, union ring_state os, uint16_t prev, int budget)
{
 union ring_state ns;
 int n, pending, total;
 uint16_t cidx = os.cidx;
 uint16_t pidx = os.pidx_tail;

 MPASS(os.flags == BUSY);
 MPASS(cidx != pidx);

 if (prev == IDLE)
  counter_u64_add(r->starts, 1);
 pending = 0;
 total = 0;

 while (cidx != pidx) {


  n = r->drain(r, cidx, pidx);
  if (n == 0) {
   critical_enter();
   os.state = r->state;
   do {
    ns.state = os.state;
    ns.cidx = cidx;
    ns.flags = STALLED;
   } while (atomic_fcmpset_64(&r->state, &os.state,
       ns.state) == 0);
   critical_exit();
   if (prev != STALLED)
    counter_u64_add(r->stalls, 1);
   else if (total > 0) {
    counter_u64_add(r->restarts, 1);
    counter_u64_add(r->stalls, 1);
   }
   break;
  }
  cidx = increment_idx(r, cidx, n);
  pending += n;
  total += n;






  if (cidx != pidx && pending < 64 && total < budget)
   continue;
  critical_enter();
  os.state = r->state;
  do {
   ns.state = os.state;
   ns.cidx = cidx;
   ns.flags = state_to_flags(ns, total >= budget);
  } while (atomic_fcmpset_acq_64(&r->state, &os.state,
      ns.state) == 0);
  critical_exit();

  if (ns.flags == ABDICATED)
   counter_u64_add(r->abdications, 1);
  if (ns.flags != BUSY) {

   MPASS(ns.flags != STALLED);
   if (prev == STALLED) {
    MPASS(total > 0);
    counter_u64_add(r->restarts, 1);
   }
   break;
  }





  pidx = ns.pidx_tail;
  pending = 0;
 }
}
