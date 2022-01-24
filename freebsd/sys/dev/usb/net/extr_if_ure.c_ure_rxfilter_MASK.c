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
typedef  int uint32_t ;
struct usb_ether {int dummy; } ;
struct ure_softc {int dummy; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct ure_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URE_MCU_TYPE_PLA ; 
 int /*<<< orphan*/  URE_PLA_MAR0 ; 
 int /*<<< orphan*/  URE_PLA_MAR4 ; 
 int /*<<< orphan*/  URE_PLA_RCR ; 
 int URE_RCR_AAP ; 
 int URE_RCR_AB ; 
 int URE_RCR_AM ; 
 int URE_RCR_APM ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 struct ure_softc* FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  ure_hash_maddr ; 
 int /*<<< orphan*/  FUNC5 (struct ure_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct usb_ether *ue)
{
	struct ure_softc *sc = FUNC4(ue);
	struct ifnet *ifp = FUNC3(ue);
	uint32_t rxmode;
	uint32_t h, hashes[2] = { 0, 0 };

	FUNC0(sc, MA_OWNED);

	rxmode = URE_RCR_APM;
	if (ifp->if_flags & IFF_BROADCAST)
		 rxmode |= URE_RCR_AB;
	if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
		if (ifp->if_flags & IFF_PROMISC)
			rxmode |= URE_RCR_AAP;
		rxmode |= URE_RCR_AM;
		hashes[0] = hashes[1] = 0xffffffff;
		goto done;
	}

	rxmode |= URE_RCR_AM;
	FUNC2(ifp, ure_hash_maddr, &hashes);

	h = FUNC1(hashes[0]);
	hashes[0] = FUNC1(hashes[1]);
	hashes[1] = h;
	rxmode |= URE_RCR_AM;

done:
	FUNC5(sc, URE_PLA_MAR0, URE_MCU_TYPE_PLA, hashes[0]);
	FUNC5(sc, URE_PLA_MAR4, URE_MCU_TYPE_PLA, hashes[1]);
	FUNC5(sc, URE_PLA_RCR, URE_MCU_TYPE_PLA, rxmode);
}