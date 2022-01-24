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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct libusb20_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_device*) ; 
 int FUNC5 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void
FUNC10(uint16_t vid, uint16_t pid, uint32_t duration)
{
	struct timeval sub_tv;
	struct timeval ref_tv;
	struct timeval res_tv;

	struct libusb20_device *pdev;

	int error;
	int iter;
	int errcnt;

	time_t last_sec;

	/* sysctl() - no set config */

	pdev = FUNC1(vid, pid);
	if (pdev == NULL) {
		FUNC7("USB device not found\n");
		return;
	}
	error = FUNC5(pdev, 0);
	if (error) {
		FUNC4(pdev);
		FUNC7("Could not open USB device\n");
		return;
	}
	iter = 0;

	errcnt = 0;

	FUNC2(&ref_tv, 0);

	last_sec = ref_tv.tv_sec;

	while (1) {

		FUNC2(&sub_tv, 0);

		if (last_sec != sub_tv.tv_sec) {

			FUNC7("STATUS: ID=%u, ERR=%u\n",
			    (int)iter, (int)errcnt);

			FUNC0(stdout);

			last_sec = sub_tv.tv_sec;
		}
		FUNC8(&sub_tv, &ref_tv, &res_tv);

		if ((res_tv.tv_sec < 0) || (res_tv.tv_sec >= (int)duration))
			break;

		if (FUNC6(pdev)) {
			errcnt++;
			FUNC9(50000);
		}
		if (FUNC3(pdev) != 0) {
			FUNC7("Device disconnected\n");
			break;
		}
		iter++;
	}

	FUNC6(pdev);

	FUNC4(pdev);
}