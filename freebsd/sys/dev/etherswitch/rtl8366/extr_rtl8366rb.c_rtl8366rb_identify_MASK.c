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
struct iicbus_ivar {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct iicbus_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL8366_IIC_ADDR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(driver_t *driver, device_t parent)
{
	device_t child;
	struct iicbus_ivar *devi;

	if (FUNC2(parent, "rtl8366rb", -1) == NULL) {
		child = FUNC0(parent, 0, "rtl8366rb", -1);
		devi = FUNC1(child);
		devi->addr = RTL8366_IIC_ADDR;
	}
}