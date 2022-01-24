#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* node; } ;
struct xenbus_device_ivars {char* xd_otherend_path; scalar_t__ xd_state; int /*<<< orphan*/  xd_lock; TYPE_1__ xd_otherend_watch; scalar_t__ xd_otherend_path_len; } ;
typedef  char device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ DS_NOTPRESENT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  M_XENBUS ; 
 int FUNC1 (char,struct xenbus_device_ivars*) ; 
 scalar_t__ XenbusStateClosed ; 
 scalar_t__ XenbusStateConnected ; 
 int /*<<< orphan*/  XenbusStateInitialising ; 
 scalar_t__ FUNC2 (char,char**,int*) ; 
 struct xenbus_device_ivars* FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ xen_suspend_cancelled ; 
 int /*<<< orphan*/  FUNC12 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

int
FUNC15(device_t dev)
{
	device_t *kids;
	struct xenbus_device_ivars *ivars;
	int i, count, error;
	char *statepath;

	/*
	 * We must re-examine each device and find the new path for
	 * its backend.
	 */
	if (FUNC2(dev, &kids, &count) == 0) {
		for (i = 0; i < count; i++) {
			if (FUNC4(kids[i]) == DS_NOTPRESENT)
				continue;

			if (xen_suspend_cancelled) {
				FUNC0(kids[i]);
				continue;
			}

			ivars = FUNC3(kids[i]);

			FUNC14(&ivars->xd_otherend_watch);
			FUNC12(kids[i], XenbusStateInitialising);

			/*
			 * Find the new backend details and
			 * re-register our watch.
			 */
			error = FUNC1(dev, ivars);
			if (error)
				return (error);

			statepath = FUNC6(ivars->xd_otherend_path_len
			    + FUNC8("/state") + 1, M_XENBUS, M_WAITOK);
			FUNC7(statepath, "%s/state", ivars->xd_otherend_path);

			FUNC5(ivars->xd_otherend_watch.node, M_XENBUS);
			ivars->xd_otherend_watch.node = statepath;

			FUNC0(kids[i]);

			FUNC13(&ivars->xd_otherend_watch);
#if 0
			/*
			 * Can't do this yet since we are running in
			 * the xenwatch thread and if we sleep here,
			 * we will stop delivering watch notifications
			 * and the device will never come back online.
			 */
			sx_xlock(&ivars->xd_lock);
			while (ivars->xd_state != XenbusStateClosed
			    && ivars->xd_state != XenbusStateConnected)
				sx_sleep(&ivars->xd_state, &ivars->xd_lock,
				    0, "xdresume", 0);
			sx_xunlock(&ivars->xd_lock);
#endif
		}
		FUNC5(kids, M_TEMP);
	}

	return (0);
}