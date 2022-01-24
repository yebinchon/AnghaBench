#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int is_exiting; int /*<<< orphan*/  devq; int /*<<< orphan*/  tmo; int /*<<< orphan*/ * cdev; } ;
struct TYPE_8__ {int isp_nchan; TYPE_1__ isp_osinfo; } ;
typedef  TYPE_2__ ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

int
FUNC6(ispsoftc_t *isp)
{
	int chan;

	if (isp->isp_osinfo.cdev) {
		FUNC4(isp->isp_osinfo.cdev);
		isp->isp_osinfo.cdev = NULL;
	}
	FUNC0(isp);
	/* Tell spawned threads that we're exiting. */
	isp->isp_osinfo.is_exiting = 1;
	for (chan = isp->isp_nchan - 1; chan >= 0; chan -= 1)
		FUNC5(isp, chan);
	FUNC1(isp);
	FUNC2(&isp->isp_osinfo.tmo);
	FUNC3(isp->isp_osinfo.devq);
	return (0);
}