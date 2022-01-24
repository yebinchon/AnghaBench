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
struct libusb_device_descriptor {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  libusb_device ;
typedef  int /*<<< orphan*/  libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long long) ; 
 scalar_t__ FUNC1 (struct libusb_device_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct libusb_device_descriptor*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 long long FUNC8 (int) ; 

__attribute__((used)) static libusb_device *
FUNC9(libusb_context *ctx, int bus_id, int dev_id)
{
	libusb_device **list, *dev = NULL, *found = NULL;
	struct libusb_device_descriptor d;
	ssize_t cnt, i;
	int r;

	cnt = FUNC6(ctx, &list);
	if (cnt < 0) {
		FUNC0("libusb_get_device_list() failed: code %lld",
		    (long long int) cnt);
		return (NULL);
	}

	/*
	 * Scan through USB device list.
	 */
	for (i = 0; i < cnt; i++) {
		dev = list[i];
		if (bus_id == FUNC3(dev) &&
		    dev_id == FUNC4(dev)) {
			/* Get the device descriptor for this device entry */
			r = FUNC5(dev, &d);
			if (r != 0) {
				FUNC0("libusb_get_device_descriptor: %s",
				    FUNC8(r));
				break;
			}

			/* Match on the vendor/product id */
			if (FUNC1(&d)) {
				/*
				 * Take a reference so it's not freed later on.
				 */
				found = FUNC7(dev);
				break;
			}
		}
	}

	FUNC2(list, 1);
	return (found);
}