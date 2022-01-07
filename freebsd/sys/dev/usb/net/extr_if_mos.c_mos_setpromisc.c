
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int dummy; } ;
struct mos_softc {int dummy; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int MA_OWNED ;
 int MOS_CTL ;
 int MOS_CTL_RX_PROMISC ;
 int MOS_LOCK_ASSERT (struct mos_softc*,int ) ;
 int mos_reg_read_1 (struct mos_softc*,int ) ;
 int mos_reg_write_1 (struct mos_softc*,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct mos_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
mos_setpromisc(struct usb_ether *ue)
{
 struct mos_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 uint8_t rxmode;

 MOS_LOCK_ASSERT(sc, MA_OWNED);

 rxmode = mos_reg_read_1(sc, MOS_CTL);


 if (ifp->if_flags & IFF_PROMISC) {
  rxmode |= MOS_CTL_RX_PROMISC;
 } else {
  rxmode &= ~MOS_CTL_RX_PROMISC;
 }

 mos_reg_write_1(sc, MOS_CTL, rxmode);
}
