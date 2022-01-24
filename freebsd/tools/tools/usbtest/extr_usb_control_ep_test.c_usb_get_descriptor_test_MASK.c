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
typedef  int /*<<< orphan*/  uint16_t ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 struct libusb20_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(uint16_t vid, uint16_t pid, uint32_t duration)
{
	struct libusb20_device *pdev;

	pdev = FUNC0(vid, pid);
	if (pdev == NULL) {
		FUNC2("USB device not found\n");
		return;
	}
	FUNC1(pdev);
}