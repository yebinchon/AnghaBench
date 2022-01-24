#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dev; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
struct cardbus_devinfo {TYPE_2__ pci; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cardbus_devinfo*) ; 
 struct cardbus_devinfo* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(device_t cbdev, device_t child)
{
	struct cardbus_devinfo *dinfo = FUNC1(child);

	if (dinfo->pci.cfg.dev != child)
		FUNC2(cbdev, "devinfo dev mismatch\n");
	FUNC0(dinfo);
	FUNC3(cbdev, child);
}