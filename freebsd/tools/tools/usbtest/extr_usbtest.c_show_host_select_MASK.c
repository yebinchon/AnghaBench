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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  force_fs ;

/* Variables and functions */
 int errno ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int FUNC14 (int,char*,char*,int,int,char*,int) ; 

__attribute__((used)) static void
FUNC15(uint8_t level)
{
	int force_fs = 0;
	int error;
	uint32_t duration = 60;

	uint16_t dev_vid = 0;
	uint16_t dev_pid = 0;
	uint8_t retval;

	while (1) {

		error = FUNC5("hw.usb.ehci.no_hs", NULL, NULL,
		    &force_fs, sizeof(force_fs));

		if (error != 0) {
			FUNC1("WARNING: Could not set non-FS mode "
			    "to %d (error=%d)\n", force_fs, errno);
		}
		retval = FUNC14(level, "Select Host Mode Test (via LibUSB)",
		    " 1) Select USB device (VID=0x%04x, PID=0x%04x)\n"
		    " 2) Manually enter USB vendor and product ID\n"
		    " 3) Force FULL speed operation: <%s>\n"
		    " 4) Mass Storage (UMASS)\n"
		    " 5) Modem (UMODEM)\n"
		    "10) Start String Descriptor Test\n"
		    "11) Start Port Reset Test\n"
		    "12) Start Set Config Test\n"
		    "13) Start Get Descriptor Test\n"
		    "14) Start Suspend and Resume Test\n"
		    "15) Start Set and Clear Endpoint Stall Test\n"
		    "16) Start Set Alternate Interface Setting Test\n"
		    "17) Start Invalid Control Request Test\n"
		    "30) Duration: <%d> seconds\n"
		    "x) Return to previous menu\n",
		    dev_vid, dev_pid,
		    force_fs ? "YES" : "NO",
		    (int)duration);

		switch (retval) {
		case 0:
			break;
		case 1:
			FUNC2(level + 1, &dev_vid, &dev_pid);
			break;
		case 2:
			dev_vid = FUNC0() & 0xFFFF;
			dev_pid = FUNC0() & 0xFFFF;
			break;
		case 3:
			force_fs ^= 1;
			break;
		case 4:
			FUNC4(level + 1, dev_vid, dev_pid, duration);
			break;
		case 5:
			FUNC3(level + 1, dev_vid, dev_pid, duration);
			break;
		case 10:
			FUNC8(dev_vid, dev_pid);
			break;
		case 11:
			FUNC9(dev_vid, dev_pid, duration);
			break;
		case 12:
			FUNC12(dev_vid, dev_pid, duration);
			break;
		case 13:
			FUNC7(dev_vid, dev_pid, duration);
			break;
		case 14:
			FUNC13(dev_vid, dev_pid, duration);
			break;
		case 15:
			FUNC11(dev_vid, dev_pid);
			break;
		case 16:
			FUNC10(dev_vid, dev_pid);
			break;
		case 17:
			FUNC6(dev_vid, dev_pid);
			break;
		case 30:
			duration = FUNC0();
			break;
		default:
			return;
		}
	}
}