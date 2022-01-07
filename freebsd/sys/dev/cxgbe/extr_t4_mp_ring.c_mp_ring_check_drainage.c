
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ring_state {scalar_t__ flags; scalar_t__ pidx_head; scalar_t__ pidx_tail; scalar_t__ cidx; int state; } ;
struct mp_ring {scalar_t__ (* can_drain ) (struct mp_ring*) ;int state; } ;


 scalar_t__ BUSY ;
 int MPASS (int) ;
 scalar_t__ STALLED ;
 int atomic_cmpset_acq_64 (int *,int ,int ) ;
 int drain_ring (struct mp_ring*,union ring_state,scalar_t__,int) ;
 scalar_t__ stub1 (struct mp_ring*) ;

void
mp_ring_check_drainage(struct mp_ring *r, int budget)
{
 union ring_state os, ns;

 os.state = r->state;
 if (os.flags != STALLED || os.pidx_head != os.pidx_tail ||
     r->can_drain(r) == 0)
  return;

 MPASS(os.cidx != os.pidx_tail);
 ns.state = os.state;
 ns.flags = BUSY;





 if (!atomic_cmpset_acq_64(&r->state, os.state, ns.state))
  return;

 drain_ring(r, ns, os.flags, budget);
}
