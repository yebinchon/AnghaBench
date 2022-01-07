
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct smsc_softc {int sc_mac_csr; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int MA_OWNED ;
 int SMSC_LOCK_ASSERT (struct smsc_softc*,int ) ;
 int SMSC_MAC_CSR ;
 int SMSC_MAC_CSR_PRMS ;
 int smsc_dbg_printf (struct smsc_softc*,char*,char*) ;
 int smsc_write_reg (struct smsc_softc*,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct smsc_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
smsc_setpromisc(struct usb_ether *ue)
{
 struct smsc_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 smsc_dbg_printf(sc, "promiscuous mode %sabled\n",
                 (ifp->if_flags & IFF_PROMISC) ? "en" : "dis");

 SMSC_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_flags & IFF_PROMISC)
  sc->sc_mac_csr |= SMSC_MAC_CSR_PRMS;
 else
  sc->sc_mac_csr &= ~SMSC_MAC_CSR_PRMS;

 smsc_write_reg(sc, SMSC_MAC_CSR, sc->sc_mac_csr);
}
