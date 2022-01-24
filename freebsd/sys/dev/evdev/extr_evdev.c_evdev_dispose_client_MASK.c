#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct evdev_dev {int /*<<< orphan*/  ev_flags; TYPE_1__* ev_methods; int /*<<< orphan*/  ev_clients; int /*<<< orphan*/  ev_shortname; } ;
struct evdev_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ev_close ) (struct evdev_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EVDEV_FLAG_SOFTREPEAT ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  EV_REP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evdev_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evdev_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ec_link ; 
 scalar_t__ FUNC5 (struct evdev_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evdev_dev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct evdev_dev*) ; 

void
FUNC9(struct evdev_dev *evdev, struct evdev_client *client)
{
	FUNC4(evdev, "removing client for device %s", evdev->ev_shortname);

	FUNC0(evdev);

	FUNC2(client, ec_link);
	if (FUNC1(&evdev->ev_clients)) {
		if (evdev->ev_methods != NULL &&
		    evdev->ev_methods->ev_close != NULL)
			(void)evdev->ev_methods->ev_close(evdev);
		if (FUNC5(evdev, EV_REP) &&
		    FUNC3(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT))
			FUNC7(evdev);
	}
	FUNC6(evdev, client);
}