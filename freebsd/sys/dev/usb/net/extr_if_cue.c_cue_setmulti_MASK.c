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
typedef  int uint32_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_broadcastaddr; } ;
struct cue_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUE_CMD_WRITESRAM ; 
 int /*<<< orphan*/  FUNC0 (struct cue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CUE_MCAST_TABLE_ADDR ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  cue_hash_maddr ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 
 struct ifnet* FUNC4 (struct usb_ether*) ; 
 struct cue_softc* FUNC5 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct cue_softc *sc = FUNC5(ue);
	struct ifnet *ifp = FUNC4(ue);
	uint32_t h, i;
	uint8_t hashtbl[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

	FUNC0(sc, MA_OWNED);

	if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
		for (i = 0; i < 8; i++)
			hashtbl[i] = 0xff;
		FUNC2(sc, CUE_CMD_WRITESRAM, CUE_MCAST_TABLE_ADDR,
		    &hashtbl, 8);
		return;
	}

	/* now program new ones */
	FUNC3(ifp, cue_hash_maddr, hashtbl);

	/*
	 * Also include the broadcast address in the filter
	 * so we can receive broadcast frames.
 	 */
	if (ifp->if_flags & IFF_BROADCAST) {
		h = FUNC1(ifp->if_broadcastaddr);
		hashtbl[h >> 3] |= 1 << (h & 0x7);
	}

	FUNC2(sc, CUE_CMD_WRITESRAM, CUE_MCAST_TABLE_ADDR, &hashtbl, 8);
}