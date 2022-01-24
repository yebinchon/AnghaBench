#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct evdev_dev {scalar_t__ ev_report_count; TYPE_2__* ev_mt; } ;
typedef  size_t int32_t ;
struct TYPE_4__ {TYPE_1__* ev_mt_slots; } ;
struct TYPE_3__ {scalar_t__ ev_report; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  EV_ABS ; 
 size_t FUNC1 (struct evdev_dev*) ; 
 int FUNC2 (struct evdev_dev*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct evdev_dev *evdev)
{
	int32_t slot;

	FUNC0(evdev);

	for (slot = 0; slot <= FUNC1(evdev); slot++) {
		if (evdev->ev_mt->ev_mt_slots[slot].ev_report !=
		    evdev->ev_report_count &&
		    FUNC2(evdev, slot, ABS_MT_TRACKING_ID) != -1){
			FUNC3(evdev, EV_ABS, ABS_MT_SLOT, slot);
			FUNC3(evdev, EV_ABS, ABS_MT_TRACKING_ID,
			    -1);
		}
	}
}