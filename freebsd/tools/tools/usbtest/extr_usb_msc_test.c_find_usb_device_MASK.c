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
struct libusb20_device {int dummy; } ;
struct libusb20_backend {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {scalar_t__ idVendor; scalar_t__ idProduct; } ;

/* Variables and functions */
 scalar_t__ LIBUSB20_MODE_HOST ; 
 struct libusb20_backend* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_backend*,struct libusb20_device*) ; 
 struct libusb20_device* FUNC2 (struct libusb20_backend*,struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_backend*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC4 (struct libusb20_device*) ; 
 scalar_t__ FUNC5 (struct libusb20_device*) ; 

struct libusb20_device *
FUNC6(uint16_t vid, uint16_t pid)
{
	struct libusb20_backend *pbe = FUNC0();
	struct libusb20_device *pdev = NULL;
	struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;

	while ((pdev = FUNC2(pbe, pdev))) {

		if (FUNC5(pdev) != LIBUSB20_MODE_HOST)
			continue;

		ddesc = FUNC4(pdev);

		if ((vid == ddesc->idVendor) &&
		    (pid == ddesc->idProduct)) {
			FUNC1(pbe, pdev);
			break;
		}
	}

	/* release data */
	FUNC3(pbe);

	return (pdev);
}