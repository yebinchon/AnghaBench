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
struct evdev_dev {int /*<<< orphan*/  ev_sw_flags; int /*<<< orphan*/  ev_snd_flags; int /*<<< orphan*/  ev_led_flags; int /*<<< orphan*/  ev_msc_flags; int /*<<< orphan*/  ev_abs_flags; int /*<<< orphan*/ * ev_absinfo; int /*<<< orphan*/  ev_rel_flags; int /*<<< orphan*/  ev_key_flags; } ;

/* Variables and functions */
 scalar_t__ ABS_CNT ; 
 scalar_t__ ABS_MT_FIRST ; 
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 scalar_t__ BTN_MISC ; 
 scalar_t__ KEY_CNT ; 
 scalar_t__ KEY_OK ; 
 scalar_t__ LED_CNT ; 
 int FUNC0 (struct evdev_dev*) ; 
 int MAX_MT_REPORTS ; 
 scalar_t__ MSC_CNT ; 
 scalar_t__ MT_CNT ; 
 scalar_t__ REL_CNT ; 
 scalar_t__ SND_CNT ; 
 scalar_t__ SW_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC5(struct evdev_dev *evdev)
{
	size_t size = 0;
	int res;

	/*
	 * Keyboards generate one event per report but other devices with
	 * buttons like mouses can report events simultaneously
	 */
	FUNC3(evdev->ev_key_flags, KEY_OK, KEY_CNT - KEY_OK, &res);
	if (res == -1)
		FUNC2(evdev->ev_key_flags, BTN_MISC, &res);
	size += (res != -1);
	FUNC1(evdev->ev_key_flags, BTN_MISC, KEY_OK - BTN_MISC, &res);
	size += res;

	/* All relative axes can be reported simultaneously */
	FUNC1(evdev->ev_rel_flags, 0, REL_CNT, &res);
	size += res;

	/*
	 * All absolute axes can be reported simultaneously.
	 * Multitouch axes can be reported ABS_MT_SLOT times
	 */
	if (evdev->ev_absinfo != NULL) {
		FUNC1(evdev->ev_abs_flags, 0, ABS_CNT, &res);
		size += res;
		FUNC1(evdev->ev_abs_flags, ABS_MT_FIRST, MT_CNT, &res);
		if (res > 0) {
			res++;	/* ABS_MT_SLOT or SYN_MT_REPORT */
			if (FUNC4(evdev->ev_abs_flags, ABS_MT_SLOT))
				/* MT type B */
				size += res * FUNC0(evdev);
			else
				/* MT type A */
				size += res * (MAX_MT_REPORTS - 1);
		}
	}

	/* All misc events can be reported simultaneously */
	FUNC1(evdev->ev_msc_flags, 0, MSC_CNT, &res);
	size += res;

	/* All leds can be reported simultaneously */
	FUNC1(evdev->ev_led_flags, 0, LED_CNT, &res);
	size += res;

	/* Assume other events are generated once per report */
	FUNC2(evdev->ev_snd_flags, SND_CNT, &res);
	size += (res != -1);

	FUNC2(evdev->ev_sw_flags, SW_CNT, &res);
	size += (res != -1);

	/* XXX: FF part is not implemented yet */

	size++;		/* SYN_REPORT */
	return (size);
}