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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct modem {scalar_t__ duration; scalar_t__ data_stress_test; scalar_t__ control_ep_test; scalar_t__ errors; scalar_t__ usb_iface; struct libusb20_device* usb_dev; void* xfer_out; void* xfer_in; scalar_t__ use_vendor_specific; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 struct libusb20_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*,int,int,int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (struct libusb20_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_device*) ; 
 char* FUNC4 (struct libusb20_device*) ; 
 scalar_t__ FUNC5 (struct libusb20_device*,int) ; 
 void* FUNC6 (struct libusb20_device*,int) ; 
 int FUNC7 (void*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct modem*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct modem*,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(struct modem *p, uint16_t vid, uint16_t pid)
{
	struct libusb20_device *pdev;

	uint8_t ntest = 0;
	uint8_t x;
	uint8_t in_ep;
	uint8_t out_ep;
	uint8_t iface;

	int error;

	pdev = FUNC0(vid, pid);
	if (pdev == NULL) {
		FUNC8("USB device not found\n");
		return;
	}

	if (p->use_vendor_specific)
		FUNC1(pdev, 255, 255, 255, 0, &iface, &in_ep, &out_ep, 0);
	else
		FUNC1(pdev, 2, 2, 1, 0, &iface, &in_ep, &out_ep, 1);

	if ((in_ep == 0) || (out_ep == 0)) {
		FUNC8("Could not find USB endpoints\n");
		FUNC3(pdev);
		return;
	}
	FUNC8("Attaching to: %s @ iface %d\n",
	    FUNC4(pdev), iface);

	if (FUNC5(pdev, 2)) {
		FUNC8("Could not open USB device\n");
		FUNC3(pdev);
		return;
	}
	if (FUNC2(pdev, iface)) {
		FUNC8("WARNING: Could not detach kernel driver\n");
	}
	p->xfer_in = FUNC6(pdev, 0);
	error = FUNC7(p->xfer_in, 65536 / 4, 1, in_ep);
	if (error) {
		FUNC8("Could not open USB endpoint %d\n", in_ep);
		FUNC3(pdev);
		return;
	}
	p->xfer_out = FUNC6(pdev, 1);
	error = FUNC7(p->xfer_out, 65536 / 4, 1, out_ep);
	if (error) {
		FUNC8("Could not open USB endpoint %d\n", out_ep);
		FUNC3(pdev);
		return;
	}
	p->usb_dev = pdev;
	p->usb_iface = iface;
	p->errors = 0;

	if (p->control_ep_test)
		ntest += 7;

	if (p->data_stress_test)
		ntest += 1;

	if (ntest == 0) {
		FUNC8("No tests selected\n");
	} else {

		if (p->control_ep_test) {
			for (x = 1; x != 8; x++) {
				FUNC9(p,
				    (p->duration + ntest - 1) / ntest, x);
			}
		}
		if (p->data_stress_test) {
			FUNC10(p,
			    (p->duration + ntest - 1) / ntest);
		}
	}

	FUNC8("\nDone\n");

	FUNC3(pdev);
}