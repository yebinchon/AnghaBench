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
typedef  scalar_t__ u_int16_t ;
struct pqi_ident {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct pqi_ident* pqi_family_identifiers ; 
 struct pqi_ident* pqi_identifiers ; 

__attribute__((used)) static struct pqi_ident *
FUNC4(device_t dev)
{
	struct pqi_ident *m;
	u_int16_t vendid, devid, sub_vendid, sub_devid;

	vendid = FUNC3(dev);
	devid = FUNC0(dev);
	sub_vendid = FUNC2(dev);
	sub_devid = FUNC1(dev);

	for (m = pqi_identifiers; m->vendor != 0; m++) {
		if ((m->vendor == vendid) && (m->device == devid) &&
			(m->subvendor == sub_vendid) &&
			(m->subdevice == sub_devid)) {
			return (m);
		}
	}

	for (m = pqi_family_identifiers; m->vendor != 0; m++) {
		if ((m->vendor == vendid) && (m->device == devid)) {
			return (m);
		}
	}

	return (NULL);
}