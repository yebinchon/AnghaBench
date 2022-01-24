#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocs_softc {TYPE_1__* reg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * res; int /*<<< orphan*/  bhandle; int /*<<< orphan*/  btag; int /*<<< orphan*/  rid; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_64BIT_BAR0 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct ocs_softc *ocs)
{

	/*
	 * Map PCI BAR0 register into the CPU's space.
	 */

	ocs->reg[0].rid = FUNC0(PCI_64BIT_BAR0);
	ocs->reg[0].res = FUNC1(dev, SYS_RES_MEMORY,
			&ocs->reg[0].rid, RF_ACTIVE);

	if (ocs->reg[0].res == NULL) {
		FUNC2(dev, "bus_alloc_resource failed rid=%#x\n",
				ocs->reg[0].rid);
		return ENXIO;
	}

	ocs->reg[0].btag = FUNC4(ocs->reg[0].res);
	ocs->reg[0].bhandle = FUNC3(ocs->reg[0].res);
	return 0;
}