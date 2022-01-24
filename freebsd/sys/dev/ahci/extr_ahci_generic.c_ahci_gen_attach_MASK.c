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
struct ahci_controller {int numirqs; int /*<<< orphan*/ * r_mem; scalar_t__ r_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct ahci_controller* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ahci_controller *ctlr = FUNC4(dev);
	int	error;

	ctlr->r_rid = 0;
	ctlr->r_mem = FUNC2(dev, SYS_RES_MEMORY, &ctlr->r_rid,
	    RF_ACTIVE);
	if (ctlr->r_mem == NULL)
		return (ENXIO);

	/* Setup controller defaults. */
	ctlr->numirqs = 1;

	/* Reset controller */
	if ((error = FUNC1(dev)) == 0)
		error = FUNC0(dev);

	if (error != 0) {
		if (ctlr->r_mem != NULL)
			FUNC3(dev, SYS_RES_MEMORY, ctlr->r_rid,
			    ctlr->r_mem);
	}
	return error;
}