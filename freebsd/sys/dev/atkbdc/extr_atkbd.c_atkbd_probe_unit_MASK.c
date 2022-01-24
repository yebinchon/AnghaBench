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
struct TYPE_3__ {int (* probe ) (int,int*,int) ;} ;
typedef  TYPE_1__ keyboard_switch_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATKBD_DRIVER_NAME ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int*,int) ; 

int
FUNC4(device_t dev, int irq, int flags)
{
	keyboard_switch_t *sw;
	int args[2];
	int error;

	sw = FUNC2(ATKBD_DRIVER_NAME);
	if (sw == NULL)
		return ENXIO;

	args[0] = FUNC1(FUNC0(dev));
	args[1] = irq;
	error = (*sw->probe)(FUNC1(dev), args, flags);
	if (error)
		return error;
	return 0;
}