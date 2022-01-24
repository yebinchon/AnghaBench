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
struct evdev_dev {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum evdev_sparse_result { ____Placeholder_evdev_sparse_result } evdev_sparse_result ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 int /*<<< orphan*/  FUNC0 (struct evdev_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_dev*) ; 
 int /*<<< orphan*/  EV_ABS ; 
#define  EV_REPORT_EVENT 130 
#define  EV_REPORT_MT_SLOT 129 
#define  EV_SKIP_EVENT 128 
 int /*<<< orphan*/  FUNC2 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct evdev_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{
	enum evdev_sparse_result sparse;

	FUNC1(evdev);

	sparse =  FUNC3(evdev, type, code, value);
	switch (sparse) {
	case EV_REPORT_MT_SLOT:
		/* report postponed ABS_MT_SLOT */
		FUNC2(evdev, EV_ABS, ABS_MT_SLOT,
		    FUNC0(evdev));
		/* FALLTHROUGH */
	case EV_REPORT_EVENT:
		FUNC2(evdev, type, code, value);
		/* FALLTHROUGH */
	case EV_SKIP_EVENT:
		break;
	}
}