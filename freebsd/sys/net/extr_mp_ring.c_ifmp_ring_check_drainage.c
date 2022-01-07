
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ state; scalar_t__ flags; scalar_t__ pidx_head; scalar_t__ pidx_tail; scalar_t__ cidx; } ;
struct ifmp_ring {scalar_t__ state; scalar_t__ (* can_drain ) (struct ifmp_ring*) ;int lock; } ;


 scalar_t__ ABDICATED ;
 scalar_t__ BUSY ;
 int MPASS (int) ;
 scalar_t__ STALLED ;
 int atomic_cmpset_acq_64 (scalar_t__*,scalar_t__,scalar_t__) ;
 int drain_ring_locked (struct ifmp_ring*,union ring_state,scalar_t__,int) ;
 int drain_ring_lockless (struct ifmp_ring*,union ring_state,scalar_t__,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (struct ifmp_ring*) ;

void
ifmp_ring_check_drainage(struct ifmp_ring *r, int budget)
{
 union ring_state os, ns;

 os.state = r->state;
 if ((os.flags != STALLED && os.flags != ABDICATED) ||
     os.pidx_head != os.pidx_tail ||
     (os.flags != ABDICATED && r->can_drain(r) == 0))
  return;

 MPASS(os.cidx != os.pidx_tail);
 ns.state = os.state;
 ns.flags = BUSY;
 if (!atomic_cmpset_acq_64(&r->state, os.state, ns.state))
  return;


 drain_ring_lockless(r, ns, os.flags, budget);

}
