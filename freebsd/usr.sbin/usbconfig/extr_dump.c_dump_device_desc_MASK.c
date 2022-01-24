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
struct libusb20_device {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct LIBUSB20_DEVICE_DESC_DECODED*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC1 (struct libusb20_device*) ; 

void
FUNC2(struct libusb20_device *pdev)
{
	struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;

	ddesc = FUNC1(pdev);
	FUNC0(DUMP0, ddesc);
	return;
}