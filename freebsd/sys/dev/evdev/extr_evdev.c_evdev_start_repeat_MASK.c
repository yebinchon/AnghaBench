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
typedef  int /*<<< orphan*/  uint16_t ;
struct evdev_dev {int* ev_rep; int /*<<< orphan*/  ev_rep_callout; int /*<<< orphan*/  ev_rep_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 size_t REP_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct evdev_dev*) ; 
 int /*<<< orphan*/  evdev_repeat_callout ; 
 int hz ; 

__attribute__((used)) static void
FUNC2(struct evdev_dev *evdev, uint16_t key)
{

	FUNC0(evdev);

	if (evdev->ev_rep[REP_DELAY]) {
		evdev->ev_rep_key = key;
		FUNC1(&evdev->ev_rep_callout,
		    evdev->ev_rep[REP_DELAY] * hz / 1000,
		    evdev_repeat_callout, evdev);
	}
}