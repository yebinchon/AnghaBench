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
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  rid; } ;
typedef  TYPE_1__ atkbdc_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int) ; 

int
FUNC6(device_t bus, device_t dev)
{
	atkbdc_device_t *kbdcdev;
	rman_res_t irq;
	int flags;
	int retval = 0;

	kbdcdev = (atkbdc_device_t *)FUNC4(dev);

	retval += FUNC2(bus, dev);
	flags = FUNC3(dev);
	if (flags != 0)
		retval += FUNC5(" flags 0x%x", flags);
	irq = FUNC0(dev, SYS_RES_IRQ, kbdcdev->rid);
	if (irq != 0)
		retval += FUNC5(" irq %jd", irq);
	retval += FUNC1(bus, dev);

	return (retval);
}