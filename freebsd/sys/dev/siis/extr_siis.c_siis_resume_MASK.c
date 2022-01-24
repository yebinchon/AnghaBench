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
struct siis_controller {int gctl; int /*<<< orphan*/  r_gmem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SIIS_GCTL ; 
 int SIIS_GCTL_GRESET ; 
 int SIIS_GCTL_I2C_IE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct siis_controller* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct siis_controller *ctlr = FUNC3(dev);

	/* Set PCIe max read request size to at least 1024 bytes */
	if (FUNC4(dev) < 1024)
		FUNC5(dev, 1024);
	/* Put controller into reset state. */
	ctlr->gctl |= SIIS_GCTL_GRESET;
	FUNC0(ctlr->r_gmem, SIIS_GCTL, ctlr->gctl);
	FUNC1(10000);
	/* Get controller out of reset state and enable port interrupts. */
	ctlr->gctl &= ~(SIIS_GCTL_GRESET | SIIS_GCTL_I2C_IE);
	ctlr->gctl |= 0x0000000f;
	FUNC0(ctlr->r_gmem, SIIS_GCTL, ctlr->gctl);
	return (FUNC2(dev));
}