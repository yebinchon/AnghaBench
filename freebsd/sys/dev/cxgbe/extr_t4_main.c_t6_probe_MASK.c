#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ device; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ PCI_VENDOR_ID_CHELSIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* t6_pciids ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	int i;
	uint16_t v = FUNC3(dev);
	uint16_t d = FUNC2(dev);

	if (v != PCI_VENDOR_ID_CHELSIO)
		return (ENXIO);

	for (i = 0; i < FUNC1(t6_pciids); i++) {
		if (d == t6_pciids[i].device) {
			FUNC0(dev, t6_pciids[i].desc);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}