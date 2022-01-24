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
struct ale_dev {scalar_t__ ale_vendorid; scalar_t__ ale_deviceid; int /*<<< orphan*/  ale_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 struct ale_dev* ale_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ale_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const struct ale_dev *sp;
	int i;
	uint16_t vendor, devid;

	vendor = FUNC3(dev);
	devid = FUNC2(dev);
	sp = ale_devs;
	for (i = 0; i < FUNC1(ale_devs); i++) {
		if (vendor == sp->ale_vendorid &&
		    devid == sp->ale_deviceid) {
			FUNC0(dev, sp->ale_name);
			return (BUS_PROBE_DEFAULT);
		}
		sp++;
	}

	return (ENXIO);
}