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
struct vt_window {int vw_kbdstate; } ;
typedef  int /*<<< orphan*/  keyboard_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOIOCTL ; 
 int /*<<< orphan*/  KDGETLED ; 
 int LED_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct vt_window *vw, keyboard_t *kbd)
{
	int leds, ret;

	leds = 0;
	ret = FUNC0(kbd, KDGETLED, (caddr_t)&leds);
	if (ret == ENOIOCTL)
		ret = ENODEV;
	if (ret != 0)
		return (ret);

	vw->vw_kbdstate &= ~LED_MASK;
	vw->vw_kbdstate |= leds & LED_MASK;

	return (0);
}