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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct libusb20_device {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int bNumConfigurations; } ;

/* Variables and functions */
 struct libusb20_device* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC2 (struct libusb20_device*) ; 
 int FUNC3 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct libusb20_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(uint16_t vid, uint16_t pid, uint32_t duration)
{
	struct libusb20_device *pdev;
	struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;
	int x;
	int error;
	int failed;
	int exp;

	pdev = FUNC0(vid, pid);
	if (pdev == NULL) {
		FUNC5("USB device not found\n");
		return;
	}
	error = FUNC3(pdev, 0);
	if (error) {
		FUNC5("Could not open USB device\n");
		FUNC1(pdev);
		return;
	}
	failed = 0;

	FUNC5("Starting set config test for "
	    "VID=0x%04x PID=0x%04x\n", vid, pid);

	for (x = 255; x > -1; x--) {

		error = FUNC4(pdev, x);
		if (error == 0) {
			if (x == 255) {
				FUNC5("Unconfiguring USB device "
				    "was successful\n");
			} else {
				FUNC5("Setting configuration %d "
				    "was successful\n", x);
			}
		} else {
			failed++;
		}
	}

	ddesc = FUNC2(pdev);
	if (ddesc != NULL)
		exp = ddesc->bNumConfigurations + 1;
	else
		exp = 1;

	FUNC5("\n\n"
	    "Set configuration summary\n"
	    "Valid count:  %d/%d %s\n"
	    "Failed count: %d\n",
	    256 - failed, exp,
	    (exp == (256 - failed)) ? "(expected)" : "(unexpected)",
	    failed);

	FUNC1(pdev);
}