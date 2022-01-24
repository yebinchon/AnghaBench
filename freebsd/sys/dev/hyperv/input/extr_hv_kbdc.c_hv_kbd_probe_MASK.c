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
struct vmbus_ic_desc {int /*<<< orphan*/ * ic_desc; int /*<<< orphan*/  ic_guid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmbus_ic_desc* vmbus_kbd_descs ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	device_t bus = FUNC2(dev);
	const struct vmbus_ic_desc *d;

	if (FUNC4(FUNC1(dev), 0))
		return (ENXIO);

	for (d = vmbus_kbd_descs; d->ic_desc != NULL; ++d) {
		if (FUNC0(bus, dev, &d->ic_guid) == 0) {
			FUNC3(dev, d->ic_desc);
			return (BUS_PROBE_DEFAULT);
		}
	}
	return (ENXIO);
}