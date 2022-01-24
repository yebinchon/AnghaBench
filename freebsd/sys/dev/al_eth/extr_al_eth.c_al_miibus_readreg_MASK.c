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
typedef  int uint16_t ;
struct al_eth_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  hal_adapter; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ MDIO_PAUSE_MSEC ; 
 int MDIO_TIMEOUT_MSEC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*) ; 
 struct al_eth_adapter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct al_eth_adapter *adapter = FUNC1(dev);
	uint16_t value = 0;
	int rc;
	int timeout = MDIO_TIMEOUT_MSEC;

	while (timeout > 0) {
		rc = FUNC0(&adapter->hal_adapter, adapter->phy_addr,
		    -1, reg, &value);

		if (rc == 0)
			return (value);

		FUNC3(adapter->dev,
		    "mdio read failed. try again in 10 msec\n");

		timeout -= MDIO_PAUSE_MSEC;
		FUNC4("readred pause", MDIO_PAUSE_MSEC);
	}

	if (rc != 0)
		FUNC2(adapter->dev, "MDIO read failed on timeout\n");

	return (value);
}