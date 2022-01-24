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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(phandle_t phy, uint8_t *hwaddr)
{
	uint8_t addr[ETHER_ADDR_LEN];

	if (FUNC0(phy, "local-mac-address", addr, ETHER_ADDR_LEN) == -1) {
		/* Missing MAC address should be marked by clearing it */
		FUNC2(hwaddr, 0, ETHER_ADDR_LEN);
	} else
		FUNC1(hwaddr, addr, ETHER_ADDR_LEN);
}