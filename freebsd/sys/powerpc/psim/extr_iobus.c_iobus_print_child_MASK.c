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
struct iobus_devinfo {int* id_reg; struct resource_list id_resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iobus_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child)
{
        struct iobus_devinfo *dinfo;
        struct resource_list *rl;
        int retval = 0;
	
	dinfo = FUNC2(child);
        rl = &dinfo->id_resources;

	retval += FUNC1(dev, child);
	
        retval += FUNC3(" offset 0x%x", dinfo->id_reg[1]);
        retval += FUNC4(rl, "irq", SYS_RES_IRQ, "%jd");
	
        retval += FUNC0(dev, child);

        return (retval);	
}