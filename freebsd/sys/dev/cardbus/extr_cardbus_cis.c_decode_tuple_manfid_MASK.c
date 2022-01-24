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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct tuple_callbacks {int dummy; } ;
struct cardbus_devinfo {int mfrid; int prodid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ cardbus_cis_debug ; 
 struct cardbus_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
	struct cardbus_devinfo *dinfo = FUNC0(child);
	int i;

	if (cardbus_cis_debug) {
		FUNC1("Manufacturer ID: ");
		for (i = 0; i < len; i++)
			FUNC1("%02x", tupledata[i]);
		FUNC1("\n");
	}

	if (len == 5) {
		dinfo->mfrid = tupledata[1] | (tupledata[2] << 8);
		dinfo->prodid = tupledata[3] | (tupledata[4] << 8);
	}
	return (0);
}