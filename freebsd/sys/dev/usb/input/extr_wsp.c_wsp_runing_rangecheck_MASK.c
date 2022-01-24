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
struct wsp_tuning {int /*<<< orphan*/  enable_single_tap_clicks; int /*<<< orphan*/  scr_hor_threshold; int /*<<< orphan*/  pressure_tap_threshold; int /*<<< orphan*/  pressure_untouch_threshold; int /*<<< orphan*/  pressure_touch_threshold; int /*<<< orphan*/  z_factor; int /*<<< orphan*/  scale_factor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC1(struct wsp_tuning *ptun)
{
	FUNC0(ptun->scale_factor, 1, 63);
	FUNC0(ptun->z_factor, 1, 63);
	FUNC0(ptun->pressure_touch_threshold, 1, 255);
	FUNC0(ptun->pressure_untouch_threshold, 1, 255);
	FUNC0(ptun->pressure_tap_threshold, 1, 255);
	FUNC0(ptun->scr_hor_threshold, 1, 255);
	FUNC0(ptun->enable_single_tap_clicks, 0, 1);
}