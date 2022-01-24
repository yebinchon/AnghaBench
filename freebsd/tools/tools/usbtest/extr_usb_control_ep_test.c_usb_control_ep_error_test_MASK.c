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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct libusb20_device {int dummy; } ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int bmRequestType; int bRequest; int wValue; int wLength; scalar_t__ wIndex; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIBUSB20_CONTROL_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct LIBUSB20_CONTROL_SETUP_DECODED*) ; 
 struct libusb20_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_device*) ; 
 int FUNC4 (struct libusb20_device*) ; 
 int FUNC5 (struct libusb20_device*) ; 
 int FUNC6 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct libusb20_device*,struct LIBUSB20_CONTROL_SETUP_DECODED*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int) ; 

void
FUNC10(uint16_t vid, uint16_t pid)
{
	struct LIBUSB20_CONTROL_SETUP_DECODED req;
	struct libusb20_device *pdev;
	uint8_t buffer[256];
	int error;
	int fail = 0;
	int bus;
	int dev;
	int cfg;

	pdev = FUNC1(vid, pid);
	if (pdev == NULL) {
		FUNC8("USB device not found\n");
		return;
	}
	error = FUNC6(pdev, 0);
	if (error) {
		FUNC8("Could not open USB device\n");
		FUNC3(pdev);
		return;
	}

	bus = FUNC5(pdev);
	dev = FUNC4(pdev);

	for (cfg = 0; cfg != 255; cfg++) {

		FUNC0(LIBUSB20_CONTROL_SETUP, &req);
		req.bmRequestType = 0x80; /* read */
		req.bRequest = 0x06; /* descriptor */
		req.wValue = 0x0200 | cfg; /* config descriptor */
		req.wIndex = 0;
		req.wLength = 255;

		FUNC8("Test #%d.1/3 ...\n", cfg);

		FUNC9(-1,-1,0,0);

		error = FUNC7(pdev, &req, buffer,
		    NULL, 1000, 0);
		if (error != 0) {
			FUNC8("Last configuration index is: %d\n", cfg - 1);
			break;
		}

		FUNC8("Test #%d.2/3 ...\n", cfg);

		FUNC9(bus,dev,1,1);

		error = FUNC7(pdev, &req, buffer,
		    NULL, 1000, 0);

		FUNC9(-1,-1,0,0);

		error = FUNC7(pdev, &req, buffer,
		    NULL, 1000, 0);
		if (error != 0) {
			FUNC8("Cannot fetch descriptor (unexpected)\n");
			fail++;
		}

		FUNC8("Test #%d.3/3 ...\n", cfg);

		FUNC9(bus,dev,0,1);

		error = FUNC7(pdev, &req, buffer,
		    NULL, 1000, 0);

		FUNC9(-1,-1,0,0);

		error = FUNC7(pdev, &req, buffer,
		    NULL, 1000, 0);
		if (error != 0) {
			FUNC8("Cannot fetch descriptor (unexpected)\n");
			fail++;
		}
	}

	FUNC2(pdev);
	FUNC3(pdev);

	FUNC8("Test completed detecting %d failures\nDone\n\n", fail);
}