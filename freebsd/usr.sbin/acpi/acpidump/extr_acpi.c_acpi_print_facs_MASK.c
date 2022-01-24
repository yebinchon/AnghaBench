#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_3__ {int Length; int HardwareSignature; int FirmwareWakingVector; int GlobalLock; int Flags; scalar_t__ XFirmwareWakingVector; int Version; } ;
typedef  TYPE_1__ ACPI_TABLE_FACS ;

/* Variables and functions */
 int ACPI_FACS_S4_BIOS_PRESENT ; 
 int ACPI_GLOCK_OWNED ; 
 int ACPI_GLOCK_PENDING ; 
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(ACPI_TABLE_FACS *facs)
{
	FUNC0(BEGIN_COMMENT);
	FUNC0("  FACS:\tLength=%u, ", facs->Length);
	FUNC0("HwSig=0x%08x, ", facs->HardwareSignature);
	FUNC0("Firm_Wake_Vec=0x%08x\n", facs->FirmwareWakingVector);

	FUNC0("\tGlobal_Lock=");
	if (facs->GlobalLock != 0) {
		if (facs->GlobalLock & ACPI_GLOCK_PENDING)
			FUNC0("PENDING,");
		if (facs->GlobalLock & ACPI_GLOCK_OWNED)
			FUNC0("OWNED");
	}
	FUNC0("\n");

	FUNC0("\tFlags=");
	if (facs->Flags & ACPI_FACS_S4_BIOS_PRESENT)
		FUNC0("S4BIOS");
	FUNC0("\n");

	if (facs->XFirmwareWakingVector != 0)
		FUNC0("\tX_Firm_Wake_Vec=%016jx\n",
		    (uintmax_t)facs->XFirmwareWakingVector);
	FUNC0("\tVersion=%u\n", facs->Version);

	FUNC0(END_COMMENT);
}