
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct glc_softc* if_softc; } ;
struct glc_softc {int bsy_txdma_slots; scalar_t__ sc_tx_vlan; int sc_wdog_timer; int sc_self; int sc_dev; int sc_bus; int sc_txdirtyq; int sc_mtx; } ;
typedef scalar_t__ bus_addr_t ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int MA_OWNED ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int device_printf (int ,char*,int) ;
 struct mbuf* ether_vlanencap (struct mbuf*,scalar_t__) ;
 scalar_t__ glc_encap (struct glc_softc*,struct mbuf**,scalar_t__*) ;
 int lv1_net_start_tx_dma (int ,int ,scalar_t__,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
glc_start_locked(struct ifnet *ifp)
{
 struct glc_softc *sc = ifp->if_softc;
 bus_addr_t first, pktdesc;
 int kickstart = 0;
 int error;
 struct mbuf *mb_head;

 mtx_assert(&sc->sc_mtx, MA_OWNED);
 first = 0;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 if (STAILQ_EMPTY(&sc->sc_txdirtyq))
  kickstart = 1;

 while (!IFQ_DRV_IS_EMPTY(&ifp->if_snd)) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, mb_head);

  if (mb_head == ((void*)0))
   break;


  if (sc->bsy_txdma_slots > 125) {

   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   IFQ_DRV_PREPEND(&ifp->if_snd, mb_head);
   break;
  }

  BPF_MTAP(ifp, mb_head);

  if (sc->sc_tx_vlan >= 0)
   mb_head = ether_vlanencap(mb_head, sc->sc_tx_vlan);

  if (glc_encap(sc, &mb_head, &pktdesc)) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  if (first == 0)
   first = pktdesc;
 }

 if (kickstart && first != 0) {
  error = lv1_net_start_tx_dma(sc->sc_bus, sc->sc_dev, first, 0);
  if (error != 0)
   device_printf(sc->sc_self,
       "lv1_net_start_tx_dma error: %d\n", error);
  sc->sc_wdog_timer = 5;
 }
}
