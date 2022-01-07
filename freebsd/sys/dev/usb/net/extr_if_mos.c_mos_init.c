
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int dummy; } ;
struct mos_softc {int* mos_ipgs; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 int MOS_CTL ;
 int MOS_CTL_BS_ENB ;
 int MOS_CTL_RX_ENB ;
 int MOS_CTL_SLEEP ;
 int MOS_CTL_TX_ENB ;
 int MOS_IPG0 ;
 int MOS_IPG1 ;
 int MOS_LOCK_ASSERT (struct mos_softc*,int ) ;
 void* mos_reg_read_1 (struct mos_softc*,int ) ;
 int mos_reg_write_1 (struct mos_softc*,int ,int) ;
 int mos_reset (struct mos_softc*) ;
 int mos_setmulti (struct usb_ether*) ;
 int mos_setpromisc (struct usb_ether*) ;
 int mos_start (struct usb_ether*) ;
 int mos_writemac (struct mos_softc*,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct mos_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
mos_init(struct usb_ether *ue)
{
 struct mos_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 uint8_t rxmode;

 MOS_LOCK_ASSERT(sc, MA_OWNED);


 mos_reset(sc);


 mos_writemac(sc, IF_LLADDR(ifp));


 sc->mos_ipgs[0] = mos_reg_read_1(sc, MOS_IPG0);
 sc->mos_ipgs[1] = mos_reg_read_1(sc, MOS_IPG1);
 mos_reg_write_1(sc, MOS_IPG0, sc->mos_ipgs[0]);
 mos_reg_write_1(sc, MOS_IPG1, sc->mos_ipgs[1]);





 rxmode = mos_reg_read_1(sc, MOS_CTL);
 rxmode |= MOS_CTL_RX_ENB | MOS_CTL_TX_ENB | MOS_CTL_BS_ENB;
 rxmode &= ~(MOS_CTL_SLEEP);

 mos_setpromisc(ue);


 mos_reg_write_1(sc, MOS_CTL, rxmode);


 mos_setmulti(ue);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 mos_start(ue);
}
