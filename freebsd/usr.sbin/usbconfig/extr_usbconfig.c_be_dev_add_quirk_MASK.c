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
typedef  void* uint16_t ;
struct libusb20_quirk {int /*<<< orphan*/  quirkname; void* bcdDeviceHigh; void* bcdDeviceLow; void* pid; void* vid; } ;
struct libusb20_backend {int dummy; } ;
typedef  int /*<<< orphan*/  q ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (struct libusb20_backend*,struct libusb20_quirk*) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_quirk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(struct libusb20_backend *pbe,
    uint16_t vid, uint16_t pid, uint16_t lorev, uint16_t hirev,
    const char *str)
{
	struct libusb20_quirk q;
	int error;

	FUNC2(&q, 0, sizeof(q));

	q.vid = vid;
	q.pid = pid;
	q.bcdDeviceLow = lorev;
	q.bcdDeviceHigh = hirev;
	FUNC3(q.quirkname, str, sizeof(q.quirkname));

	error = FUNC1(pbe, &q);
	if (error) {
		FUNC0(stderr, "Adding quirk '%s' failed, continuing.\n", str);
	}
	return;
}