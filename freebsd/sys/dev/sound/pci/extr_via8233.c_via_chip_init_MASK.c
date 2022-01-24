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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int VIA_PCI_ACLINK_C00_READY ; 
 int /*<<< orphan*/  VIA_PCI_ACLINK_CTRL ; 
 int VIA_PCI_ACLINK_DESIRED ; 
 int VIA_PCI_ACLINK_EN ; 
 int VIA_PCI_ACLINK_NRST ; 
 int /*<<< orphan*/  VIA_PCI_ACLINK_STAT ; 
 int VIA_PCI_ACLINK_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	uint32_t data, cnt;

	/* Wake up and reset AC97 if necessary */
	data = FUNC2(dev, VIA_PCI_ACLINK_STAT, 1);

	if ((data & VIA_PCI_ACLINK_C00_READY) == 0) {
		/* Cold reset per ac97r2.3 spec (page 95) */
		/* Assert low */
		FUNC3(dev, VIA_PCI_ACLINK_CTRL,
		    VIA_PCI_ACLINK_EN, 1);
		/* Wait T_rst_low */
		FUNC0(100);
		/* Assert high */
		FUNC3(dev, VIA_PCI_ACLINK_CTRL,
		    VIA_PCI_ACLINK_EN | VIA_PCI_ACLINK_NRST, 1);
		/* Wait T_rst2clk */
		FUNC0(5);
		/* Assert low */
		FUNC3(dev, VIA_PCI_ACLINK_CTRL,
		    VIA_PCI_ACLINK_EN, 1);
	} else {
		/* Warm reset */
		/* Force no sync */
		FUNC3(dev, VIA_PCI_ACLINK_CTRL,
		    VIA_PCI_ACLINK_EN, 1);
		FUNC0(100);
		/* Sync */
		FUNC3(dev, VIA_PCI_ACLINK_CTRL,
		    VIA_PCI_ACLINK_EN | VIA_PCI_ACLINK_SYNC, 1);
		/* Wait T_sync_high */
		FUNC0(5);
		/* Force no sync */
		FUNC3(dev, VIA_PCI_ACLINK_CTRL,
		    VIA_PCI_ACLINK_EN, 1);
		/* Wait T_sync2clk */
		FUNC0(5);
	}

	/* Power everything up */
	FUNC3(dev, VIA_PCI_ACLINK_CTRL, VIA_PCI_ACLINK_DESIRED, 1);

	/* Wait for codec to become ready (largest reported delay 310ms) */
	for (cnt = 0; cnt < 2000; cnt++) {
		data = FUNC2(dev, VIA_PCI_ACLINK_STAT, 1);
		if (data & VIA_PCI_ACLINK_C00_READY)
			return (0);
		FUNC0(5000);
	}
	FUNC1(dev, "primary codec not ready (cnt = 0x%02x)\n", cnt);
	return (ENXIO);
}