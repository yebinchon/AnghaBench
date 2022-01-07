
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct my_softc {int my_watchdog; int * my_pinfo; TYPE_2__* my_ldata; int my_dev; TYPE_1__* my_info; scalar_t__ my_autoneg; struct ifnet* my_ifp; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
struct TYPE_4__ {int * my_tx_list; int * my_rx_list; } ;
struct TYPE_3__ {scalar_t__ my_did; } ;


 int CSR_WRITE_4 (struct my_softc*,int ,int) ;
 scalar_t__ ENOBUFS ;
 int IFF_BROADCAST ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 scalar_t__ MTD891ID ;
 int MY_AB ;
 int MY_BCR ;
 int MY_CLRBIT (struct my_softc*,int ,int ) ;
 int MY_Enhanced ;
 int MY_IMR ;
 int MY_INTRS ;
 int MY_ISR ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_PBL8 ;
 int MY_PROG ;
 int MY_PROM ;
 int MY_RBLEN ;
 int MY_RE ;
 int MY_RPBLE512 ;
 int MY_RXLBA ;
 int MY_SETBIT (struct my_softc*,int ,int ) ;
 int MY_TCRRCR ;
 int MY_TE ;
 int MY_TFTSF ;
 int MY_TXLBA ;
 int PHY_BMCR ;
 int callout_reset (int *,int ,int ,struct my_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ my_list_rx_init (struct my_softc*) ;
 int my_list_tx_init (struct my_softc*) ;
 int my_phy_readreg (struct my_softc*,int ) ;
 int my_phy_writereg (struct my_softc*,int ,int ) ;
 int my_reset (struct my_softc*) ;
 int my_setcfg (struct my_softc*,int ) ;
 int my_setmulti (struct my_softc*) ;
 int my_stop (struct my_softc*) ;
 int my_watchdog ;
 int vtophys (int *) ;

__attribute__((used)) static void
my_init_locked(struct my_softc *sc)
{
 struct ifnet *ifp = sc->my_ifp;
 u_int16_t phy_bmcr = 0;

 MY_LOCK_ASSERT(sc);
 if (sc->my_autoneg) {
  return;
 }
 if (sc->my_pinfo != ((void*)0))
  phy_bmcr = my_phy_readreg(sc, PHY_BMCR);



 my_stop(sc);
 my_reset(sc);
 CSR_WRITE_4(sc, MY_BCR, MY_PBL8);
 CSR_WRITE_4(sc, MY_TCRRCR, MY_TFTSF | MY_RBLEN | MY_RPBLE512);



 if (sc->my_info->my_did == MTD891ID) {
  MY_SETBIT(sc, MY_BCR, MY_PROG);
  MY_SETBIT(sc, MY_TCRRCR, MY_Enhanced);
 }
 my_setcfg(sc, phy_bmcr);

 if (my_list_rx_init(sc) == ENOBUFS) {
  device_printf(sc->my_dev, "init failed: no memory for rx buffers\n");
  my_stop(sc);
  return;
 }

 my_list_tx_init(sc);


 if (ifp->if_flags & IFF_PROMISC)
  MY_SETBIT(sc, MY_TCRRCR, MY_PROM);
 else
  MY_CLRBIT(sc, MY_TCRRCR, MY_PROM);




 if (ifp->if_flags & IFF_BROADCAST)
  MY_SETBIT(sc, MY_TCRRCR, MY_AB);
 else
  MY_CLRBIT(sc, MY_TCRRCR, MY_AB);




 my_setmulti(sc);




 MY_CLRBIT(sc, MY_TCRRCR, MY_RE);
 CSR_WRITE_4(sc, MY_RXLBA, vtophys(&sc->my_ldata->my_rx_list[0]));




 CSR_WRITE_4(sc, MY_IMR, MY_INTRS);
 CSR_WRITE_4(sc, MY_ISR, 0xFFFFFFFF);


 MY_SETBIT(sc, MY_TCRRCR, MY_RE);
 MY_CLRBIT(sc, MY_TCRRCR, MY_TE);
 CSR_WRITE_4(sc, MY_TXLBA, vtophys(&sc->my_ldata->my_tx_list[0]));
 MY_SETBIT(sc, MY_TCRRCR, MY_TE);


 if (sc->my_pinfo != ((void*)0))
  my_phy_writereg(sc, PHY_BMCR, phy_bmcr);
 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 callout_reset(&sc->my_watchdog, hz, my_watchdog, sc);
 return;
}
