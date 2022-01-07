
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; } ;
struct axe_softc {int dummy; } ;


 int AXE_CMD_RXCTL_READ ;
 int AXE_CMD_RXCTL_WRITE ;
 int AXE_RXCMD_PROMISC ;
 int IFF_PROMISC ;
 int axe_cmd (struct axe_softc*,int ,int ,int ,int *) ;
 int axe_setmulti (struct usb_ether*) ;
 int le16toh (int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct axe_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
axe_setpromisc(struct usb_ether *ue)
{
 struct axe_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 uint16_t rxmode;

 axe_cmd(sc, AXE_CMD_RXCTL_READ, 0, 0, &rxmode);

 rxmode = le16toh(rxmode);

 if (ifp->if_flags & IFF_PROMISC) {
  rxmode |= AXE_RXCMD_PROMISC;
 } else {
  rxmode &= ~AXE_RXCMD_PROMISC;
 }

 axe_cmd(sc, AXE_CMD_RXCTL_WRITE, 0, rxmode, ((void*)0));

 axe_setmulti(ue);
}
