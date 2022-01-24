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
struct evdev_dev {int* ev_rep; scalar_t__ ev_report_size; int /*<<< orphan*/ * ev_absinfo; int /*<<< orphan*/  ev_abs_flags; int /*<<< orphan*/  ev_mtx; int /*<<< orphan*/  ev_rep_callout; int /*<<< orphan*/  ev_flags; int /*<<< orphan*/  ev_clients; int /*<<< orphan*/  ev_serial; int /*<<< orphan*/  ev_name; int /*<<< orphan*/  ev_shortname; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 int /*<<< orphan*/  EVDEV_FLAG_SOFTREPEAT ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct evdev_dev*) ; 
 size_t REP_DELAY ; 
 size_t REP_PERIOD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct evdev_dev*) ; 
 scalar_t__ FUNC7 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct evdev_dev*) ; 
 int FUNC9 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct evdev_dev*) ; 

__attribute__((used)) static int
FUNC11(struct evdev_dev *evdev)
{
	int ret;

	FUNC4(evdev, "%s: registered evdev provider: %s <%s>\n",
	    evdev->ev_shortname, evdev->ev_name, evdev->ev_serial);

	/* Initialize internal structures */
	FUNC0(&evdev->ev_clients);

	if (FUNC7(evdev, EV_REP) &&
	    FUNC2(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT)) {
		/* Initialize callout */
		FUNC3(&evdev->ev_rep_callout, &evdev->ev_mtx, 0);

		if (evdev->ev_rep[REP_DELAY] == 0 &&
		    evdev->ev_rep[REP_PERIOD] == 0) {
			/* Supply default values */
			evdev->ev_rep[REP_DELAY] = 250;
			evdev->ev_rep[REP_PERIOD] = 33;
		}
	}

	/* Initialize multitouch protocol type B states */
	if (FUNC2(evdev->ev_abs_flags, ABS_MT_SLOT) &&
	    evdev->ev_absinfo != NULL && FUNC1(evdev) > 0)
		FUNC8(evdev);

	/* Estimate maximum report size */
	if (evdev->ev_report_size == 0) {
		ret = FUNC9(evdev,
		    FUNC6(evdev));
		if (ret != 0)
			goto bail_out;
	}

	/* Create char device node */
	ret = FUNC5(evdev);
	if (ret != 0)
		goto bail_out;

	/* Create sysctls (for device enumeration without /dev/input access rights) */
	FUNC10(evdev);

bail_out:
	return (ret);
}