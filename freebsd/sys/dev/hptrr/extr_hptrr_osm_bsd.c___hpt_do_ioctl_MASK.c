#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int result; void* ioctl_cmnd; int /*<<< orphan*/  done; } ;
struct TYPE_11__ {scalar_t__ vbus; } ;
typedef  TYPE_1__* PVBUS_EXT ;
typedef  int /*<<< orphan*/  PVBUS ;
typedef  TYPE_2__ IOCTL_ARG ;

/* Variables and functions */
 int /*<<< orphan*/  HPT_OSM_TIMEOUT ; 
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  hpt_ioctl_done ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(PVBUS_EXT vbus_ext, IOCTL_ARG *ioctl_args)
{
	ioctl_args->result = -1;
	ioctl_args->done = hpt_ioctl_done;
	ioctl_args->ioctl_cmnd = (void *)1;

	FUNC1(vbus_ext);
	FUNC4((PVBUS)vbus_ext->vbus, ioctl_args);

	while (ioctl_args->ioctl_cmnd) {
		if (FUNC2(vbus_ext, ioctl_args, PPAUSE, "hptctl", HPT_OSM_TIMEOUT)==0)
			break;
		FUNC5((PVBUS)vbus_ext->vbus);
		FUNC0(vbus_ext);
	}

	/* KdPrint(("ioctl %x result %d", ioctl_args->dwIoControlCode, ioctl_args->result)); */

	FUNC3(vbus_ext);
}