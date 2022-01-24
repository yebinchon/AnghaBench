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
struct siis_controller {int /*<<< orphan*/  gctl; int /*<<< orphan*/  r_gmem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIIS_GCTL ; 
 int /*<<< orphan*/  SIIS_GCTL_GRESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct siis_controller* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct siis_controller *ctlr = FUNC2(dev);

	FUNC1(dev);
	/* Put controller into reset state. */
	ctlr->gctl |= SIIS_GCTL_GRESET;
	FUNC0(ctlr->r_gmem, SIIS_GCTL, ctlr->gctl);
	return 0;
}