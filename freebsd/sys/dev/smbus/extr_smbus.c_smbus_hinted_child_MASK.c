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
struct smbus_ivar {int addr; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  SMBUS_ORDER_HINTED ; 
 int UINT8_MAX ; 
 struct smbus_ivar* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,int*) ; 

__attribute__((used)) static void
FUNC4(device_t bus, const char *dname, int dunit)
{
	struct smbus_ivar *devi;
	device_t child;
	int addr;

	addr = 0;
	FUNC3(dname, dunit, "addr", &addr);
	if (addr > UINT8_MAX) {
		FUNC2(bus, "ignored incorrect slave address hint 0x%x"
		    " for %s%d\n", addr, dname, dunit);
		return;
	}
	child = FUNC0(bus, SMBUS_ORDER_HINTED, dname, dunit);
	if (child == NULL)
		return;
	devi = FUNC1(child);
	devi->addr = addr;
}