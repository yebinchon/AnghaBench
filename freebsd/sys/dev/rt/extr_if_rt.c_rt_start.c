
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rt_softc {int tx_watchdog_ch; int tx_timer; TYPE_2__* tx_ring; int * tx_data_queue_full; } ;
struct TYPE_4__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; struct rt_softc* if_softc; } ;
struct TYPE_5__ {scalar_t__ data_queued; } ;


 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int RT_DEBUG_TX ;
 int RT_DPRINTF (struct rt_softc*,int ,char*,int) ;
 scalar_t__ RT_SOFTC_TX_RING_DATA_COUNT ;
 int RT_SOFTC_TX_RING_LOCK (TYPE_2__*) ;
 int RT_SOFTC_TX_RING_UNLOCK (TYPE_2__*) ;
 int RT_TX_WATCHDOG_TIMEOUT ;
 int callout_reset (int *,int ,int ,struct rt_softc*) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ rt_tx_data (struct rt_softc*,struct mbuf*,int) ;
 int rt_tx_watchdog ;

__attribute__((used)) static void
rt_start(struct ifnet *ifp)
{
 struct rt_softc *sc;
 struct mbuf *m;
 int qid = 0 ;

 sc = ifp->if_softc;

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
  return;

 for (;;) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;

  m->m_pkthdr.rcvif = ((void*)0);

  RT_SOFTC_TX_RING_LOCK(&sc->tx_ring[qid]);

  if (sc->tx_ring[qid].data_queued >=
      RT_SOFTC_TX_RING_DATA_COUNT) {
   RT_SOFTC_TX_RING_UNLOCK(&sc->tx_ring[qid]);

   RT_DPRINTF(sc, RT_DEBUG_TX,
       "if_start: Tx ring with qid=%d is full\n", qid);

   m_freem(m);

   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

   sc->tx_data_queue_full[qid]++;

   break;
  }

  if (rt_tx_data(sc, m, qid) != 0) {
   RT_SOFTC_TX_RING_UNLOCK(&sc->tx_ring[qid]);

   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

   break;
  }

  RT_SOFTC_TX_RING_UNLOCK(&sc->tx_ring[qid]);
  sc->tx_timer = RT_TX_WATCHDOG_TIMEOUT;
  callout_reset(&sc->tx_watchdog_ch, hz, rt_tx_watchdog, sc);
 }
}
