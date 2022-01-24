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
struct chipc_devinfo {int irq_mapped; int /*<<< orphan*/  irq; int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct chipc_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev, device_t child)
{
	struct chipc_devinfo *dinfo = FUNC1(child);

	if (dinfo != NULL) {
		/* Free the child's resource list */
		FUNC4(&dinfo->resources);

		/* Unmap the child's IRQ */
		if (dinfo->irq_mapped) {
			FUNC0(dev, dinfo->irq);
			dinfo->irq_mapped = false;
		}

		FUNC3(dinfo, M_BHND);
	}

	FUNC2(child, NULL);
}