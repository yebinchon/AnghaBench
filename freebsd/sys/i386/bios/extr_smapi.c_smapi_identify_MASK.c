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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int length; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  SMAPI_LEN ; 
 int /*<<< orphan*/  SMAPI_OFF ; 
 int /*<<< orphan*/  SMAPI_SIG ; 
 int /*<<< orphan*/  SMAPI_START ; 
 int /*<<< orphan*/  SMAPI_STEP ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (driver_t *driver, device_t parent)
{
	device_t child;
	u_int32_t addr;
	int length;
	int rid;

	if (!FUNC4(parent))
		return;

	addr = FUNC2(SMAPI_START, SMAPI_SIG, SMAPI_LEN,
                              SMAPI_STEP, SMAPI_OFF);
	if (addr != 0) {
		rid = 0;
		length = FUNC0(addr)->length;

		child = FUNC1(parent, 5, "smapi", -1);
		FUNC6(child, driver);
		FUNC3(child, SYS_RES_MEMORY, rid, addr, length);
		FUNC5(child, "SMAPI BIOS");
	}

	return;
}