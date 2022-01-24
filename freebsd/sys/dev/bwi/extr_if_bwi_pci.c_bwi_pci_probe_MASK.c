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
typedef  scalar_t__ uint16_t ;
struct bwi_dev {scalar_t__ did; scalar_t__ vid; int /*<<< orphan*/ * desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 struct bwi_dev* bwi_devices ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct bwi_dev *b;
	uint16_t did, vid;

	did = FUNC1(dev);
	vid = FUNC2(dev);

	for (b = bwi_devices; b->desc != NULL; ++b) {
		if (b->did == did && b->vid == vid) {
			FUNC0(dev, b->desc);
			return BUS_PROBE_DEFAULT;
		}
	}
	return ENXIO;
}