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
struct jedec_dimm_tsod_dev {scalar_t__ vendor_id; scalar_t__ device_id; char const* description; } ;

/* Variables and functions */
 struct jedec_dimm_tsod_dev* known_tsod_devices ; 
 int FUNC0 (struct jedec_dimm_tsod_dev*) ; 

__attribute__((used)) static const char *
FUNC1(uint16_t vid, uint16_t did)
{
	const struct jedec_dimm_tsod_dev *d;
	int i;

	for (i = 0; i < FUNC0(known_tsod_devices); i++) {
		d = &known_tsod_devices[i];
		if ((vid == d->vendor_id) && ((did >> 8) == d->device_id)) {
			return (d->description);
		}
	}

	/* If no matches for a specific device, then check for a generic
	 * TSE2004av-compliant device.
	 */
	if ((did >> 8) == 0x22) {
		return ("TSE2004av compliant TSOD");
	}

	return (NULL);
}