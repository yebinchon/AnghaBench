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
struct evdev_dev {int* ev_rep; int /*<<< orphan*/  ev_rep_key; int /*<<< orphan*/  ev_rep_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int KEY_EVENT_REPEAT ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 size_t REP_PERIOD ; 
 int /*<<< orphan*/  SYN_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int hz ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct evdev_dev *evdev = (struct evdev_dev *)arg;

	FUNC1(evdev, EV_KEY, evdev->ev_rep_key, KEY_EVENT_REPEAT);
	FUNC1(evdev, EV_SYN, SYN_REPORT, 1);

	if (evdev->ev_rep[REP_PERIOD])
		FUNC0(&evdev->ev_rep_callout,
		    evdev->ev_rep[REP_PERIOD] * hz / 1000,
		    evdev_repeat_callout, evdev);
	else
		evdev->ev_rep_key = KEY_RESERVED;
}