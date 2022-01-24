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
struct usb_bus {int /*<<< orphan*/ * ifp; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 struct usb_bus* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbpf_cloner ; 
 int /*<<< orphan*/  usbusname ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	int devlcnt;
	device_t *devlp;
	devclass_t dc;
	struct usb_bus *ubus;
	int error;
	int i;
	
	FUNC4(usbpf_cloner);

	dc = FUNC0(usbusname);
	if (dc == NULL)
		return;
	error = FUNC1(dc, &devlp, &devlcnt);
	if (error)
		return;
	for (i = 0; i < devlcnt; i++) {
		ubus = FUNC2(devlp[i]);
		if (ubus != NULL && ubus->ifp != NULL)
			FUNC5(usbpf_cloner, ubus->ifp);
	}
	FUNC3(devlp, M_TEMP);
}