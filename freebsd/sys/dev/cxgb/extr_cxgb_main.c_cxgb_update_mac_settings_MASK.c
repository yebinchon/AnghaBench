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
struct t3_rx_mode {int dummy; } ;
struct cmac {int dummy; } ;
struct port_info {int tx_chan; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  adapter; struct cmac mac; struct ifnet* ifp; } ;
struct ifnet {int if_mtu; int if_capenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct t3_rx_mode*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cmac*,struct t3_rx_mode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC8(struct port_info *p)
{
	struct ifnet *ifp = p->ifp;
	struct t3_rx_mode rm;
	struct cmac *mac = &p->mac;
	int mtu, hwtagging;

	FUNC1(p);

	FUNC2(FUNC0(ifp), p->hw_addr, ETHER_ADDR_LEN);

	mtu = ifp->if_mtu;
	if (ifp->if_capenable & IFCAP_VLAN_MTU)
		mtu += ETHER_VLAN_ENCAP_LEN;

	hwtagging = (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0;

	FUNC5(mac, mtu);
	FUNC7(p->adapter, 1 << p->tx_chan, hwtagging);
	FUNC4(mac, 0, p->hw_addr);
	FUNC3(&rm, p);
	FUNC6(mac, &rm);
}