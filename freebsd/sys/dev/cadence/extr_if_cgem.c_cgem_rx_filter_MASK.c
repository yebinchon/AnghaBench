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
struct cgem_softc {int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  CGEM_HASH_BOT ; 
 int /*<<< orphan*/  CGEM_HASH_TOP ; 
 int /*<<< orphan*/  CGEM_NET_CFG ; 
 int CGEM_NET_CFG_COPY_ALL ; 
 int CGEM_NET_CFG_MULTI_HASH_EN ; 
 int CGEM_NET_CFG_NO_BCAST ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int FUNC0 (struct cgem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cgem_hash_maddr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cgem_softc *sc)
{
	if_t ifp = sc->ifp;
	uint32_t hashes[2] = { 0, 0 };
	uint32_t net_cfg;

	net_cfg = FUNC0(sc, CGEM_NET_CFG);

	net_cfg &= ~(CGEM_NET_CFG_MULTI_HASH_EN |
		     CGEM_NET_CFG_NO_BCAST | 
		     CGEM_NET_CFG_COPY_ALL);

	if ((FUNC3(ifp) & IFF_PROMISC) != 0)
		net_cfg |= CGEM_NET_CFG_COPY_ALL;
	else {
		if ((FUNC3(ifp) & IFF_BROADCAST) == 0)
			net_cfg |= CGEM_NET_CFG_NO_BCAST;
		if ((FUNC3(ifp) & IFF_ALLMULTI) != 0) {
			hashes[0] = 0xffffffff;
			hashes[1] = 0xffffffff;
		} else
			FUNC2(ifp, cgem_hash_maddr, hashes);

		if (hashes[0] != 0 || hashes[1] != 0)
			net_cfg |= CGEM_NET_CFG_MULTI_HASH_EN;
	}

	FUNC1(sc, CGEM_HASH_TOP, hashes[0]);
	FUNC1(sc, CGEM_HASH_BOT, hashes[1]);
	FUNC1(sc, CGEM_NET_CFG, net_cfg);
}