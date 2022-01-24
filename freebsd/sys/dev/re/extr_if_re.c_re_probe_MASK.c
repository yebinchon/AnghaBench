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
 scalar_t__ LINKSYS_DEVICEID_EG1032 ; 
 scalar_t__ LINKSYS_SUBDEVICE_EG1032_REV3 ; 
 scalar_t__ LINKSYS_VENDORID ; 
 scalar_t__ RT_DEVICEID_8139 ; 
 scalar_t__ RT_VENDORID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rl_type*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct rl_type* re_devs ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	const struct rl_type	*t;
	uint16_t		devid, vendor;
	uint16_t		revid, sdevid;
	int			i;

	vendor = FUNC5(dev);
	devid = FUNC2(dev);
	revid = FUNC3(dev);
	sdevid = FUNC4(dev);

	if (vendor == LINKSYS_VENDORID && devid == LINKSYS_DEVICEID_EG1032) {
		if (sdevid != LINKSYS_SUBDEVICE_EG1032_REV3) {
			/*
			 * Only attach to rev. 3 of the Linksys EG1032 adapter.
			 * Rev. 2 is supported by sk(4).
			 */
			return (ENXIO);
		}
	}

	if (vendor == RT_VENDORID && devid == RT_DEVICEID_8139) {
		if (revid != 0x20) {
			/* 8139, let rl(4) take care of this device. */
			return (ENXIO);
		}
	}

	t = re_devs;
	for (i = 0; i < FUNC1(re_devs); i++, t++) {
		if (vendor == t->rl_vid && devid == t->rl_did) {
			FUNC0(dev, t->rl_name);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}