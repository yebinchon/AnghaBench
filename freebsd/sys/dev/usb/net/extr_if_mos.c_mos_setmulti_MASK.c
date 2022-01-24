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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_ether {int dummy; } ;
struct mos_softc {int dummy; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MOS_CTL ; 
 int /*<<< orphan*/  MOS_CTL_ALLMULTI ; 
 int /*<<< orphan*/  FUNC0 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  mos_hash_maddr ; 
 int /*<<< orphan*/  FUNC2 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mos_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mos_softc*,void*) ; 
 struct ifnet* FUNC5 (struct usb_ether*) ; 
 struct mos_softc* FUNC6 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC7(struct usb_ether *ue)
{
	struct mos_softc *sc = FUNC6(ue);
	struct ifnet *ifp = FUNC5(ue);
	uint8_t rxmode;
	uint8_t hashtbl[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	int allmulti = 0;

	FUNC0(sc, MA_OWNED);

	rxmode = FUNC2(sc, MOS_CTL);

	if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC)
		allmulti = 1;

	/* get all new ones */
	FUNC1(ifp, mos_hash_maddr, &hashtbl);

	/* now program new ones */
	if (allmulti == 1) {
		rxmode |= MOS_CTL_ALLMULTI;
		FUNC3(sc, MOS_CTL, rxmode);
	} else {
		rxmode &= ~MOS_CTL_ALLMULTI;
		FUNC4(sc, (void *)&hashtbl);
		FUNC3(sc, MOS_CTL, rxmode);
	}
}