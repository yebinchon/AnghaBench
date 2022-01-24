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
typedef  int uint16_t ;
struct libusb20_quirk {char* quirkname; int vid; int pid; int bcdDeviceLow; int bcdDeviceHigh; } ;
struct libusb20_backend {int dummy; } ;
typedef  int /*<<< orphan*/  q ;

/* Variables and functions */
 int FUNC0 (struct libusb20_backend*,int,struct libusb20_quirk*) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_quirk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

void
FUNC4(struct libusb20_backend *pbe)
{
	struct libusb20_quirk q;
	uint16_t x;
	int error;

	FUNC1(&q, 0, sizeof(q));

	FUNC2("\nDumping current device quirks:\n\n");

	for (x = 0; x != 0xFFFF; x++) {

		error = FUNC0(pbe, x, &q);
		if (error) {
			if (x == 0) {
				FUNC2("No device quirks - maybe the USB quirk "
				    "module has not been loaded.\n");
			}
			break;
		}
		if (FUNC3(q.quirkname, "UQ_NONE")) {
			FUNC2("VID=0x%04x PID=0x%04x REVLO=0x%04x "
			    "REVHI=0x%04x QUIRK=%s\n",
			    q.vid, q.pid, q.bcdDeviceLow,
			    q.bcdDeviceHigh, q.quirkname);
		}
	}
	FUNC2("\n");
	return;
}