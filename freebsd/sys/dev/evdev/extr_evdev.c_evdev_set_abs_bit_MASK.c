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
typedef  scalar_t__ uint16_t ;
struct evdev_dev {int /*<<< orphan*/  ev_abs_flags; int /*<<< orphan*/ * ev_absinfo; } ;

/* Variables and functions */
 scalar_t__ ABS_CNT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

inline void
FUNC3(struct evdev_dev *evdev, uint16_t code)
{

	FUNC0(code < ABS_CNT, ("invalid evdev abs property"));
	if (evdev->ev_absinfo == NULL)
		evdev->ev_absinfo = FUNC2();
	FUNC1(evdev->ev_abs_flags, code);
}