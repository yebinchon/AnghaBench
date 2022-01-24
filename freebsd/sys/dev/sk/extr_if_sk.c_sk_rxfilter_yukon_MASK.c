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
struct sk_if_softc {struct ifnet* sk_ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_if_softc*) ; 
 int FUNC1 (struct sk_if_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_if_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  YUKON_MCAH1 ; 
 int /*<<< orphan*/  YUKON_MCAH2 ; 
 int /*<<< orphan*/  YUKON_MCAH3 ; 
 int /*<<< orphan*/  YUKON_MCAH4 ; 
 int /*<<< orphan*/  YUKON_RCR ; 
 int YU_RCR_MUFLEN ; 
 int YU_RCR_UFLEN ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  sk_hash_maddr_yukon ; 

__attribute__((used)) static void
FUNC4(struct sk_if_softc *sc_if)
{
	struct ifnet		*ifp;
	uint32_t		hashes[2] = { 0, 0 }, mode;

	FUNC0(sc_if);

	ifp = sc_if->sk_ifp;
	mode = FUNC1(sc_if, YUKON_RCR);
	if (ifp->if_flags & IFF_PROMISC)
		mode &= ~(YU_RCR_UFLEN | YU_RCR_MUFLEN); 
	else if (ifp->if_flags & IFF_ALLMULTI) {
		mode |= YU_RCR_UFLEN | YU_RCR_MUFLEN; 
		hashes[0] = 0xFFFFFFFF;
		hashes[1] = 0xFFFFFFFF;
	} else {
		mode |= YU_RCR_UFLEN;
		FUNC3(ifp, sk_hash_maddr_yukon, hashes);
		if (hashes[0] != 0 || hashes[1] != 0)
			mode |= YU_RCR_MUFLEN;
	}

	FUNC2(sc_if, YUKON_MCAH1, hashes[0] & 0xffff);
	FUNC2(sc_if, YUKON_MCAH2, (hashes[0] >> 16) & 0xffff);
	FUNC2(sc_if, YUKON_MCAH3, hashes[1] & 0xffff);
	FUNC2(sc_if, YUKON_MCAH4, (hashes[1] >> 16) & 0xffff);
	FUNC2(sc_if, YUKON_RCR, mode);
}