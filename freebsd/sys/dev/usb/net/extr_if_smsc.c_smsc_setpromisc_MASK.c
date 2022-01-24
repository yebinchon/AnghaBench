#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_ether {int dummy; } ;
struct smsc_softc {int /*<<< orphan*/  sc_mac_csr; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct smsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMSC_MAC_CSR ; 
 int /*<<< orphan*/  SMSC_MAC_CSR_PRMS ; 
 int /*<<< orphan*/  FUNC1 (struct smsc_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct smsc_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct smsc_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);

	FUNC1(sc, "promiscuous mode %sabled\n",
	                (ifp->if_flags & IFF_PROMISC) ? "en" : "dis");

	FUNC0(sc, MA_OWNED);

	if (ifp->if_flags & IFF_PROMISC)
		sc->sc_mac_csr |= SMSC_MAC_CSR_PRMS;
	else
		sc->sc_mac_csr &= ~SMSC_MAC_CSR_PRMS;

	FUNC2(sc, SMSC_MAC_CSR, sc->sc_mac_csr);
}