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
struct kue_softc {int /*<<< orphan*/  sc_rxfilt; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  KUE_CMD_SET_PKT_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct kue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KUE_RXFILT_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct kue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC2 (struct usb_ether*) ; 
 struct kue_softc* FUNC3 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC4(struct usb_ether *ue)
{
	struct kue_softc *sc = FUNC3(ue);
	struct ifnet *ifp = FUNC2(ue);

	FUNC0(sc, MA_OWNED);

	if (ifp->if_flags & IFF_PROMISC)
		sc->sc_rxfilt |= KUE_RXFILT_PROMISC;
	else
		sc->sc_rxfilt &= ~KUE_RXFILT_PROMISC;

	FUNC1(sc, KUE_CMD_SET_PKT_FILTER, sc->sc_rxfilt);
}