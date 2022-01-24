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
typedef  scalar_t__ uint64_t ;
struct rman {int dummy; } ;
struct ps3bus_devinfo {int bus; int dev; int /*<<< orphan*/  resources; int /*<<< orphan*/  devtype; int /*<<< orphan*/  bustype; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_LPAR_ID_PME ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int,int,scalar_t__*,scalar_t__*) ; 
 int FUNC5 (int,int,scalar_t__,scalar_t__,int,scalar_t__*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct rman*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct rman *rm, int bus_index, int dev_index,
    uint64_t irq_type, uint64_t reg_type, struct ps3bus_devinfo *dinfo)
{
	uint64_t _irq_type, irq, outlet;
	uint64_t _reg_type, paddr, len;
	uint64_t ppe, junk;
	int i, result;
	int thread;

	FUNC10(&dinfo->resources);

	FUNC3(&ppe);
	thread = 32 - FUNC0(FUNC7());

	/* Scan for interrupts */
	for (i = 0; i < 10; i++) {
		result = FUNC4(PS3_LPAR_ID_PME,
		    (FUNC6("bus") >> 32) | bus_index,
		    FUNC6("dev") | dev_index,
		    FUNC6("intr") | i, 0, &_irq_type, &irq);

		if (result != 0)
			break;

		if (_irq_type != irq_type)
			continue;

		FUNC2(irq, &outlet);
		FUNC1(ppe, thread, outlet, outlet,
		    0);
		FUNC9(&dinfo->resources, SYS_RES_IRQ, i,
		    outlet, outlet, 1);
	}

	/* Scan for registers */
	for (i = 0; i < 10; i++) {
		result = FUNC4(PS3_LPAR_ID_PME,
		    (FUNC6("bus") >> 32) | bus_index,
		    FUNC6("dev") | dev_index,
		    FUNC6("reg") | i, 
		    FUNC6("type"), &_reg_type, &junk);

		if (result != 0)
			break;

		if (_reg_type != reg_type)
			continue;

		result = FUNC4(PS3_LPAR_ID_PME,
		    (FUNC6("bus") >> 32) | bus_index,
		    FUNC6("dev") | dev_index,
		    FUNC6("reg") | i, 
		    FUNC6("data"), &paddr, &len);

		result = FUNC5(dinfo->bus, dinfo->dev,
		    paddr, len, 12 /* log_2(4 KB) */, &paddr);

		if (result != 0) {
			FUNC8("Mapping registers failed for device "
			    "%d.%d (%ld.%ld): %d\n", dinfo->bus, dinfo->dev,
			    dinfo->bustype, dinfo->devtype, result);
			break;
		}

		FUNC11(rm, paddr, paddr + len - 1);
		FUNC9(&dinfo->resources, SYS_RES_MEMORY, i,
		    paddr, paddr + len, len);
	}
}