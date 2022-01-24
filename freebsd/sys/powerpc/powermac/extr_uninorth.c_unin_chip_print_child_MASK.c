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
struct resource_list {int dummy; } ;
struct unin_chip_devinfo {struct resource_list udi_resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unin_chip_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child)
{
        struct unin_chip_devinfo *dinfo;
        struct resource_list *rl;
        int retval = 0;

        dinfo = FUNC2(child);
        rl = &dinfo->udi_resources;

        retval += FUNC1(dev, child);

        retval += FUNC3(rl, "mem", SYS_RES_MEMORY, "%#jx");
        retval += FUNC3(rl, "irq", SYS_RES_IRQ, "%jd");

        retval += FUNC0(dev, child);

        return (retval);
}