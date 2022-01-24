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
struct superio_devinfo {struct resource_list resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct superio_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct superio_devinfo*,char*) ; 

__attribute__((used)) static void
FUNC3(device_t dev, device_t child)
{
	struct superio_devinfo *dinfo;
	struct resource_list *rl;

	dinfo = FUNC0(child);
	rl = &dinfo->resources;

	if (FUNC1(rl, dev, child, SYS_RES_IRQ) != 0)
		FUNC2(dinfo, "Device leaked IRQ resources\n");
	if (FUNC1(rl, dev, child, SYS_RES_MEMORY) != 0)
		FUNC2(dinfo, "Device leaked memory resources\n");
	if (FUNC1(rl, dev, child, SYS_RES_IOPORT) != 0)
		FUNC2(dinfo, "Device leaked I/O resources\n");
}