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
typedef  int uint8_t ;
struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int /*<<< orphan*/  sc_ue; } ;
struct ifnet {int if_flags; } ;
typedef  int /*<<< orphan*/  hashtbl ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct udav_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct udav_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDAV_MAR ; 
 int /*<<< orphan*/  UDAV_RCR ; 
 int UDAV_RCR_ALL ; 
 int UDAV_RCR_PRMSC ; 
 int /*<<< orphan*/  FUNC2 (struct udav_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct udav_softc*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  udav_hash_maddr ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct usb_ether *ue)
{
	struct udav_softc *sc = ue->ue_sc;
	struct ifnet *ifp = FUNC6(&sc->sc_ue);
	uint8_t hashtbl[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

	FUNC1(sc, MA_OWNED);

	if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
		FUNC2(sc, UDAV_RCR, UDAV_RCR_ALL|UDAV_RCR_PRMSC);
		return;
	}

	/* first, zot all the existing hash bits */
	FUNC4(hashtbl, 0x00, sizeof(hashtbl));
	hashtbl[7] |= 0x80;	/* broadcast address */
	FUNC5(sc, UDAV_MAR, hashtbl, sizeof(hashtbl));

	/* now program new ones */
	FUNC3(ifp, udav_hash_maddr, hashtbl);

	/* disable all multicast */
	FUNC0(sc, UDAV_RCR, UDAV_RCR_ALL);

	/* write hash value to the register */
	FUNC5(sc, UDAV_MAR, hashtbl, sizeof(hashtbl));
}