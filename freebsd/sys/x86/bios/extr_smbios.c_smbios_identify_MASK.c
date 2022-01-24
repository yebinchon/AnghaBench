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
typedef  int u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int length; int major_version; int minor_version; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  SMBIOS_LEN ; 
 int /*<<< orphan*/  SMBIOS_OFF ; 
 int /*<<< orphan*/  SMBIOS_SIG ; 
 int /*<<< orphan*/  SMBIOS_START ; 
 int /*<<< orphan*/  SMBIOS_STEP ; 
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

	addr = FUNC2(SMBIOS_START, SMBIOS_SIG, SMBIOS_LEN,
			      SMBIOS_STEP, SMBIOS_OFF);
	if (addr != 0) {
		rid = 0;
		length = FUNC0(addr)->length;

		if (length != 0x1f) {
			u_int8_t major, minor;

			major = FUNC0(addr)->major_version;
			minor = FUNC0(addr)->minor_version;

			/* SMBIOS v2.1 implementation might use 0x1e. */
			if (length == 0x1e && major == 2 && minor == 1)
				length = 0x1f;
			else
				return;
		}

		child = FUNC1(parent, 5, "smbios", -1);
		FUNC6(child, driver);
		FUNC3(child, SYS_RES_MEMORY, rid, addr, length);
		FUNC5(child, "System Management BIOS");
	}

	return;
}