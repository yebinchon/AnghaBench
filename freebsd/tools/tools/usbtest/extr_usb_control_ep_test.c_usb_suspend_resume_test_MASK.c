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
typedef  unsigned int uint32_t ;
typedef  int uint16_t ;
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct libusb20_device {int dummy; } ;
typedef  int /*<<< orphan*/  ptimo ;

/* Variables and functions */
 int LIBUSB20_POWER_ON ; 
 int LIBUSB20_POWER_SAVE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct libusb20_device* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_device*) ; 
 int FUNC5 (struct libusb20_device*) ; 
 int FUNC6 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct libusb20_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*,struct timeval*,struct timeval*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void
FUNC13(uint16_t vid, uint16_t pid, uint32_t duration)
{
	struct timeval sub_tv;
	struct timeval ref_tv;
	struct timeval res_tv;

	struct libusb20_device *pdev;

	time_t last_sec;

	int iter;
	int error;
	int ptimo;
	int errcnt;
	int power_old;

	ptimo = 1;			/* second(s) */

	error = FUNC9("hw.usb.power_timeout", NULL, NULL,
	    &ptimo, sizeof(ptimo));

	if (error != 0) {
		FUNC8("WARNING: Could not set power "
		    "timeout to 1 (error=%d) \n", errno);
	}
	pdev = FUNC1(vid, pid);
	if (pdev == NULL) {
		FUNC8("USB device not found\n");
		return;
	}
	error = FUNC6(pdev, 0);
	if (error) {
		FUNC8("Could not open USB device\n");
		FUNC4(pdev);
		return;
	}
	power_old = FUNC5(pdev);

	FUNC8("Starting suspend and resume "
	    "test for VID=0x%04x PID=0x%04x\n", vid, pid);

	iter = 0;
	errcnt = 0;

	FUNC2(&ref_tv, 0);

	last_sec = ref_tv.tv_sec;

	while (1) {

		if (FUNC3(pdev) != 0) {
			FUNC8("Device disconnected\n");
			break;
		}
		FUNC2(&sub_tv, 0);

		if (last_sec != sub_tv.tv_sec) {

			FUNC8("STATUS: ID=%u, ERR=%u\n",
			    (int)iter, (int)errcnt);

			FUNC0(stdout);

			last_sec = sub_tv.tv_sec;
		}
		FUNC10(&sub_tv, &ref_tv, &res_tv);

		if ((res_tv.tv_sec < 0) || (res_tv.tv_sec >= (int)duration))
			break;

		error = FUNC7(pdev, (iter & 1) ?
		    LIBUSB20_POWER_ON : LIBUSB20_POWER_SAVE);

		if (error)
			errcnt++;

		/* wait before switching power mode */
		FUNC12(4100000 +
		    (((uint32_t)FUNC11()) % 2000000U));

		iter++;
	}

	/* restore default power mode */
	FUNC7(pdev, power_old);

	FUNC4(pdev);
}