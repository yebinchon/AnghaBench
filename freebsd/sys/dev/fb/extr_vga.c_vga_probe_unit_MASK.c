#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* probe ) (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ video_switch_t ;
typedef  int /*<<< orphan*/  video_adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(int unit, video_adapter_t *buf, int flags)
{
	video_adapter_t *adp;
	video_switch_t *sw;
	int error;

	sw = FUNC2(VGA_DRIVER_NAME);
	if (sw == NULL)
		return 0;
	error = (*sw->probe)(unit, &adp, NULL, flags);
	if (error)
		return error;
	FUNC0(adp, buf, sizeof(*buf));
	return 0;
}