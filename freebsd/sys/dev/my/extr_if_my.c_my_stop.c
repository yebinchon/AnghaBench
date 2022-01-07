
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* my_tx_chain; TYPE_1__* my_rx_chain; } ;
struct my_softc {TYPE_4__* my_ldata; TYPE_3__ my_cdata; int my_watchdog; int my_autoneg_timer; struct ifnet* my_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_8__ {int my_tx_list; int my_rx_list; } ;
struct TYPE_6__ {int * my_mbuf; } ;
struct TYPE_5__ {int * my_mbuf; } ;


 int CSR_WRITE_4 (struct my_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MY_CLRBIT (struct my_softc*,int ,int) ;
 int MY_IMR ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_RE ;
 int MY_RXLBA ;
 int MY_RX_LIST_CNT ;
 int MY_TCRRCR ;
 int MY_TE ;
 int MY_TXLBA ;
 int MY_TX_LIST_CNT ;
 int bzero (char*,int) ;
 int callout_stop (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
my_stop(struct my_softc * sc)
{
 int i;
 struct ifnet *ifp;

 MY_LOCK_ASSERT(sc);
 ifp = sc->my_ifp;

 callout_stop(&sc->my_autoneg_timer);
 callout_stop(&sc->my_watchdog);

 MY_CLRBIT(sc, MY_TCRRCR, (MY_RE | MY_TE));
 CSR_WRITE_4(sc, MY_IMR, 0x00000000);
 CSR_WRITE_4(sc, MY_TXLBA, 0x00000000);
 CSR_WRITE_4(sc, MY_RXLBA, 0x00000000);




 for (i = 0; i < MY_RX_LIST_CNT; i++) {
  if (sc->my_cdata.my_rx_chain[i].my_mbuf != ((void*)0)) {
   m_freem(sc->my_cdata.my_rx_chain[i].my_mbuf);
   sc->my_cdata.my_rx_chain[i].my_mbuf = ((void*)0);
  }
 }
 bzero((char *)&sc->my_ldata->my_rx_list,
     sizeof(sc->my_ldata->my_rx_list));



 for (i = 0; i < MY_TX_LIST_CNT; i++) {
  if (sc->my_cdata.my_tx_chain[i].my_mbuf != ((void*)0)) {
   m_freem(sc->my_cdata.my_tx_chain[i].my_mbuf);
   sc->my_cdata.my_tx_chain[i].my_mbuf = ((void*)0);
  }
 }
 bzero((char *)&sc->my_ldata->my_tx_list,
     sizeof(sc->my_ldata->my_tx_list));
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 return;
}
