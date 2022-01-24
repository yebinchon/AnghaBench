#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vt_axis_t ;
struct vt_device {TYPE_1__* vd_driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* vd_setpixel ) (struct vt_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vt_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 

__attribute__((used)) static void
FUNC3(struct vt_device *vd, vt_axis_t x, vt_axis_t y,
    unsigned char color)
{

	vd->vd_driver->vd_setpixel(vd, x, y, FUNC2(color >> 4));
	vd->vd_driver->vd_setpixel(vd, x + 1, y, FUNC2(color & 0xf));
}