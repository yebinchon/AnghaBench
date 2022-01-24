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
struct rl_type {scalar_t__ rl_vid; scalar_t__ rl_did; int /*<<< orphan*/  rl_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ RT_DEVICEID_8139 ; 
 scalar_t__ RT_VENDORID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rl_type*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct rl_type* rl_devs ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const struct rl_type	*t;
	uint16_t		devid, revid, vendor;
	int			i;
	
	vendor = FUNC4(dev);
	devid = FUNC2(dev);
	revid = FUNC3(dev);

	if (vendor == RT_VENDORID && devid == RT_DEVICEID_8139) {
		if (revid == 0x20) {
			/* 8139C+, let re(4) take care of this device. */
			return (ENXIO);
		}
	}
	t = rl_devs;
	for (i = 0; i < FUNC1(rl_devs); i++, t++) {
		if (vendor == t->rl_vid && devid == t->rl_did) {
			FUNC0(dev, t->rl_name);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}