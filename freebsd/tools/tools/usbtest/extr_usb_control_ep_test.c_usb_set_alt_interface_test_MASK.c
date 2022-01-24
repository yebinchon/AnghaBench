#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct libusb20_device {int dummy; } ;
struct libusb20_config {int num_interface; TYPE_1__* interface; } ;
struct TYPE_2__ {int num_altsetting; } ;

/* Variables and functions */
 struct libusb20_device* FUNC0 (int,int) ; 
 struct libusb20_config* FUNC1 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct libusb20_device*) ; 
 int FUNC6 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct libusb20_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void
FUNC9(uint16_t vid, uint16_t pid)
{
	struct libusb20_device *pdev;
	struct libusb20_config *config;

	int iter;
	int error;
	int errcnt;
	int n;
	int m;

	pdev = FUNC0(vid, pid);
	if (pdev == NULL) {
		FUNC8("USB device not found\n");
		return;
	}
	FUNC8("Starting set alternate setting test "
	    "for VID=0x%04x PID=0x%04x\n", vid, pid);

	config = FUNC1(pdev,
	    FUNC5(pdev));
	if (config == NULL) {
		FUNC8("Could not get configuration descriptor\n");
		FUNC4(pdev);
		return;
	}
	iter = 0;
	errcnt = 0;

	for (n = 0; n != config->num_interface; n++) {
		/* detach kernel driver */
		FUNC3(pdev, n);

		error = FUNC6(pdev, 0);
		if (error)
			FUNC8("ERROR could not open device\n");

		/* Try the alternate settings */
		for (m = 0; m != config->interface[n].num_altsetting; m++) {

			iter++;

			if (FUNC7(pdev, n, m + 1)) {
				FUNC8("ERROR on interface %d alt %d\n", n, m + 1);
				errcnt++;
			}
		}

		/* Restore to default */

		iter++;

		if (FUNC7(pdev, n, 0)) {
			FUNC8("ERROR on interface %d alt %d\n", n, 0);
			errcnt++;
		}
		FUNC2(pdev);
	}

	FUNC4(pdev);

	FUNC8("\n"
	    "Test summary\n"
	    "============\n"
	    "Interfaces tested: %d\n"
	    "Errors: %d\n", iter, errcnt);
}