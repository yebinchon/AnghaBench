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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(phandle_t phy_node, device_t mac, device_t *mdio_dev)
{
	device_t bus;

	while (phy_node > 0) {
		if (FUNC3(phy_node, "fsl,fman-mdio"))
			break;
		phy_node = FUNC0(phy_node);
	}

	if (phy_node <= 0)
		return (ENOENT);

	bus = FUNC1(mac);
	*mdio_dev = FUNC2(bus, phy_node);

	return (0);
}