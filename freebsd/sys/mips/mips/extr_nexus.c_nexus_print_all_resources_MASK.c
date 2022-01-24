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
struct nexus_device {struct resource_list nx_resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct nexus_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct resource_list*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct nexus_device *ndev = FUNC0(dev);
	struct resource_list *rl = &ndev->nx_resources;
	int retval = 0;

	if (FUNC1(rl))
		retval += FUNC2(" at");

	retval += FUNC3(rl, "mem", SYS_RES_MEMORY, "%#jx");
	retval += FUNC3(rl, "irq", SYS_RES_IRQ, "%jd");

	return (retval);
}