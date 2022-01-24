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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char*,char*) ; 

__attribute__((used)) static void
FUNC9(uint8_t level)
{
	uint8_t retval;

	while (1) {

		retval = FUNC8(level, "Select Device Mode Test Group",
		    "1) Audio (UAUDIO)\n"
		    "2) Mass Storage (MSC)\n"
		    "3) Ethernet (CDCE)\n"
		    "4) Keyboard Input Device (UKBD)\n"
		    "5) Mouse Input Device (UMS)\n"
		    "6) Message Transfer Protocol (MTP)\n"
		    "7) Modem (CDC)\n"
		    "8) Generic Endpoint Loopback (GENERIC)\n"
		    "x) Return to previous menu\n");

		switch (retval) {
		case 0:
			break;
		case 1:
			FUNC0(level + 1);
			break;
		case 2:
			FUNC6(level + 1);
			break;
		case 3:
			FUNC1(level + 1);
			break;
		case 4:
			FUNC3(level + 1);
			break;
		case 5:
			FUNC5(level + 1);
			break;
		case 6:
			FUNC7(level + 1);
			break;
		case 7:
			FUNC4(level + 1);
			break;
		case 8:
			FUNC2(level + 1);
			break;
		default:
			return;
		}
	}
}