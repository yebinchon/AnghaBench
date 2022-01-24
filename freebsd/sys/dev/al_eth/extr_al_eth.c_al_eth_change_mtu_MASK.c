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
struct al_eth_adapter {int /*<<< orphan*/  hal_adapter; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_MIN_FRAME_LEN ; 
 int ETHER_CRC_LEN ; 
 int ETHER_HDR_LEN ; 
 int ETHER_VLAN_ENCAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct al_eth_adapter *adapter, int new_mtu)
{
	int max_frame = new_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN +
	    ETHER_VLAN_ENCAP_LEN;

	FUNC0(adapter, new_mtu);

	FUNC3(adapter->dev, "set MTU to %d\n", new_mtu);
	FUNC1(&adapter->hal_adapter,
	    AL_ETH_MIN_FRAME_LEN, max_frame);

	FUNC2(&adapter->hal_adapter, 0, new_mtu - 100);

	return (0);
}