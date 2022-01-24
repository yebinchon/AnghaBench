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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_short ;
typedef  scalar_t__ u_char ;
struct ifnet {int if_mtu; int if_flags; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_start; scalar_t__ if_ioctl; void* if_init; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ETHERMTU ; 
 int /*<<< orphan*/  IFCAP_LINKSTATE ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  IF_DUNIT_NONE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ nm_vi_dummy ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  nm_vi_start ; 
 int /*<<< orphan*/  ticks ; 

int
FUNC8(const char *name, struct ifnet **ret)
{
	struct ifnet *ifp;
	u_short macaddr_hi;
	uint32_t macaddr_mid;
	u_char eaddr[6];
	int unit = FUNC7(); /* just to decide MAC address */

	if (unit < 0)
		return EBUSY;
	/*
	 * We use the same MAC address generation method with tap
	 * except for the highest octet is 00:be instead of 00:bd
	 */
	macaddr_hi = FUNC3(0x00be); /* XXX tap + 1 */
	macaddr_mid = (uint32_t) ticks;
	FUNC1(&macaddr_hi, eaddr, sizeof(short));
	FUNC1(&macaddr_mid, &eaddr[2], sizeof(uint32_t));
	eaddr[5] = (uint8_t)unit;

	ifp = FUNC4(IFT_ETHER);
	if (ifp == NULL) {
		FUNC6("if_alloc failed");
		return ENOMEM;
	}
	FUNC5(ifp, name, IF_DUNIT_NONE);
	ifp->if_mtu = 65536;
	ifp->if_flags = IFF_UP | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_init = (void *)nm_vi_dummy;
	ifp->if_ioctl = nm_vi_dummy;
	ifp->if_start = nm_vi_start;
	ifp->if_mtu = ETHERMTU;
	FUNC0(&ifp->if_snd, ifqmaxlen);
	ifp->if_capabilities |= IFCAP_LINKSTATE;
	ifp->if_capenable |= IFCAP_LINKSTATE;

	FUNC2(ifp, eaddr);
	*ret = ifp;
	return 0;
}