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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vmci_ids ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (FUNC2(dev) == vmci_ids[0].vendor &&
	    FUNC1(dev) == vmci_ids[0].device) {
		FUNC0(dev, vmci_ids[0].desc);

		return (BUS_PROBE_DEFAULT);
	}

	return (ENXIO);
}