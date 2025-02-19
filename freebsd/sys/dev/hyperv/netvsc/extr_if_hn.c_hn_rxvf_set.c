
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct ifnet {int dummy; } ;
struct hn_softc {int hn_rx_ring_cnt; int hn_rx_ring_inuse; struct hn_rx_ring* hn_rx_ring; } ;
struct hn_rxvf_setarg {struct ifnet* vf_ifp; struct hn_rx_ring* rxr; } ;
struct hn_rx_ring {struct ifnet* hn_rxvf_ifp; int hn_chan; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int TASK_INIT (struct task*,int ,int ,struct hn_rxvf_setarg*) ;
 int hn_rxvf_set_task ;
 int vmbus_chan_run_task (int ,struct task*) ;

__attribute__((used)) static void
hn_rxvf_set(struct hn_softc *sc, struct ifnet *vf_ifp)
{
 struct hn_rx_ring *rxr;
 struct hn_rxvf_setarg arg;
 struct task task;
 int i;

 HN_LOCK_ASSERT(sc);

 TASK_INIT(&task, 0, hn_rxvf_set_task, &arg);

 for (i = 0; i < sc->hn_rx_ring_cnt; ++i) {
  rxr = &sc->hn_rx_ring[i];

  if (i < sc->hn_rx_ring_inuse) {
   arg.rxr = rxr;
   arg.vf_ifp = vf_ifp;
   vmbus_chan_run_task(rxr->hn_chan, &task);
  } else {
   rxr->hn_rxvf_ifp = vf_ifp;
  }
 }
}
