#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct cam_sim {int dummy; } ;
typedef  struct cam_sim cam_path ;
struct TYPE_10__ {int /*<<< orphan*/ * devq; TYPE_3__* cdev; int /*<<< orphan*/  tmo; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int isp_nchan; TYPE_1__ isp_osinfo; int /*<<< orphan*/  isp_lock; int /*<<< orphan*/  isp_maxcmds; int /*<<< orphan*/  isp_dev; } ;
typedef  TYPE_2__ ispsoftc_t ;
struct TYPE_12__ {TYPE_2__* si_drv1; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,struct cam_sim*,struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_sim*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int hz ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  isp_cdevsw ; 
 int /*<<< orphan*/  isp_timer ; 
 int isp_timer_count ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cam_sim*) ; 

int
FUNC15(ispsoftc_t *isp)
{
	const char *nu = FUNC9(isp->isp_osinfo.dev);
	int du = FUNC10(isp->isp_dev);
	int chan;

	/*
	 * Create the device queue for our SIM(s).
	 */
	isp->isp_osinfo.devq = FUNC7(isp->isp_maxcmds);
	if (isp->isp_osinfo.devq == NULL) {
		return (EIO);
	}

	for (chan = 0; chan < isp->isp_nchan; chan++) {
		if (FUNC11(isp, isp->isp_osinfo.devq, chan)) {
			goto unwind;
		}
	}

	FUNC3(&isp->isp_osinfo.tmo, &isp->isp_lock, 0);
	isp_timer_count = hz >> 2;
	FUNC4(&isp->isp_osinfo.tmo, isp_timer_count, isp_timer, isp);

	isp->isp_osinfo.cdev = FUNC12(&isp_cdevsw, du, UID_ROOT, GID_OPERATOR, 0600, "%s", nu);
	if (isp->isp_osinfo.cdev) {
		isp->isp_osinfo.cdev->si_drv1 = isp;
	}
	return (0);

unwind:
	while (--chan >= 0) {
		struct cam_sim *sim;
		struct cam_path *path;

		FUNC0(isp, chan, sim, sim);
		FUNC0(isp, chan, path, path);
		FUNC14(path);
		FUNC1(isp);
		FUNC13(FUNC6(sim));
		FUNC2(isp);
		FUNC5(sim, FALSE);
	}
	FUNC8(isp->isp_osinfo.devq);
	isp->isp_osinfo.devq = NULL;
	return (-1);
}