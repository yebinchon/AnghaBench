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
struct evdev_dev {int /*<<< orphan*/  ev_clients; TYPE_1__* ev_methods; int /*<<< orphan*/  ev_shortname; } ;
struct evdev_client {int dummy; } ;
struct TYPE_2__ {int (* ev_open ) (struct evdev_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evdev_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ec_link ; 
 int FUNC4 (struct evdev_dev*) ; 

int
FUNC5(struct evdev_dev *evdev, struct evdev_client *client)
{
	int ret = 0;

	FUNC3(evdev, "adding new client for device %s", evdev->ev_shortname);

	FUNC0(evdev);

	if (FUNC1(&evdev->ev_clients) && evdev->ev_methods != NULL &&
	    evdev->ev_methods->ev_open != NULL) {
		FUNC3(evdev, "calling ev_open() on device %s",
		    evdev->ev_shortname);
		ret = evdev->ev_methods->ev_open(evdev);
	}
	if (ret == 0)
		FUNC2(&evdev->ev_clients, client, ec_link);
	return (ret);
}