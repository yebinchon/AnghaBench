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
struct evdev_dev {unsigned long* ev_type_flags; unsigned long* ev_key_flags; unsigned long* ev_rel_flags; unsigned long* ev_abs_flags; unsigned long* ev_msc_flags; unsigned long* ev_led_flags; unsigned long* ev_snd_flags; unsigned long* ev_sw_flags; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int ABS_CNT ; 
 int ENOTTY ; 
#define  EV_ABS 135 
 int EV_CNT ; 
#define  EV_FF 134 
#define  EV_KEY 133 
#define  EV_LED 132 
#define  EV_MSC 131 
#define  EV_REL 130 
#define  EV_SND 129 
#define  EV_SW 128 
 int KEY_CNT ; 
 int LED_CNT ; 
 int FUNC0 (int,int) ; 
 int MSC_CNT ; 
 int REL_CNT ; 
 int SND_CNT ; 
 int SW_CNT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*,int) ; 

__attribute__((used)) static int
FUNC4(struct evdev_dev *evdev, int type, int len, caddr_t data)
{
	unsigned long *bitmap;
	int limit;

	switch (type) {
	case 0:
		bitmap = evdev->ev_type_flags;
		limit = EV_CNT;
		break;
	case EV_KEY:
		bitmap = evdev->ev_key_flags;
		limit = KEY_CNT;
		break;
	case EV_REL:
		bitmap = evdev->ev_rel_flags;
		limit = REL_CNT;
		break;
	case EV_ABS:
		bitmap = evdev->ev_abs_flags;
		limit = ABS_CNT;
		break;
	case EV_MSC:
		bitmap = evdev->ev_msc_flags;
		limit = MSC_CNT;
		break;
	case EV_LED:
		bitmap = evdev->ev_led_flags;
		limit = LED_CNT;
		break;
	case EV_SND:
		bitmap = evdev->ev_snd_flags;
		limit = SND_CNT;
		break;
	case EV_SW:
		bitmap = evdev->ev_sw_flags;
		limit = SW_CNT;
		break;
	case EV_FF:
		/*
		 * We don't support EV_FF now, so let's
		 * just fake it returning only zeros.
		 */
		FUNC2(data, len);
		return (0);
	default:
		return (ENOTTY);
	}

	/*
	 * Clear ioctl data buffer in case it's bigger than
	 * bitmap size
	 */
	FUNC2(data, len);

	limit = FUNC1(limit);
	len = FUNC0(limit, len);
	FUNC3(data, bitmap, len);
	return (0);
}