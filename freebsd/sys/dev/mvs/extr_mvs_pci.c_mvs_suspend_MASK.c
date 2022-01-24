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
struct mvs_controller {int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CHIP_MIM ; 
 int /*<<< orphan*/  CHIP_PCIIM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mvs_controller* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct mvs_controller *ctlr = FUNC2(dev);

	FUNC1(dev);
	/* Mask chip interrupts */
	FUNC0(ctlr->r_mem, CHIP_MIM, 0x00000000);
	/* Mask PCI interrupts */
	FUNC0(ctlr->r_mem, CHIP_PCIIM, 0x00000000);
	return 0;
}