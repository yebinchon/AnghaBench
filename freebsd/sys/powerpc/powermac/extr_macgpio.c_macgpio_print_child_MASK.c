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
struct macgpio_devinfo {scalar_t__ gpio_num; int /*<<< orphan*/  mdi_resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ GPIO_BASE ; 
 scalar_t__ GPIO_EXTINT_BASE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct macgpio_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child)
{
        struct macgpio_devinfo *dinfo;
        int retval = 0;

        dinfo = FUNC2(child);

        retval += FUNC1(dev, child);
	
	if (dinfo->gpio_num >= GPIO_BASE)
		FUNC3(" gpio %d", dinfo->gpio_num - GPIO_BASE);
	else if (dinfo->gpio_num >= GPIO_EXTINT_BASE)
		FUNC3(" extint-gpio %d", dinfo->gpio_num - GPIO_EXTINT_BASE);
	else if (dinfo->gpio_num >= 0)
		FUNC3(" addr 0x%02x", dinfo->gpio_num); /* should not happen */

	FUNC4(&dinfo->mdi_resources, "irq", SYS_RES_IRQ, 
	    "%jd");
        retval += FUNC0(dev, child);

        return (retval);
}