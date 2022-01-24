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
struct TYPE_2__ {int Sequence; int Id; int MinimumTick; int Flags; int /*<<< orphan*/  Address; } ;
typedef  TYPE_1__ ACPI_TABLE_HPET ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 int ACPI_HPET_ID_COMPARATORS ; 
 int ACPI_HPET_ID_COUNT_SIZE_CAP ; 
 int ACPI_HPET_ID_HARDWARE_REV_ID ; 
 int ACPI_HPET_ID_LEGACY_CAPABLE ; 
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(ACPI_TABLE_HEADER *sdp)
{
	ACPI_TABLE_HPET *hpet;

	FUNC2(BEGIN_COMMENT);
	FUNC1(sdp);
	hpet = (ACPI_TABLE_HPET *)sdp;
	FUNC2("\tHPET Number=%d\n", hpet->Sequence);
	FUNC2("\tADDR=");
	FUNC0(&hpet->Address);
	FUNC2("\tHW Rev=0x%x\n", hpet->Id & ACPI_HPET_ID_HARDWARE_REV_ID);
	FUNC2("\tComparators=%d\n", (hpet->Id & ACPI_HPET_ID_COMPARATORS) >>
	    8);
	FUNC2("\tCounter Size=%d\n", hpet->Id & ACPI_HPET_ID_COUNT_SIZE_CAP ?
	    1 : 0);
	FUNC2("\tLegacy IRQ routing capable={");
	if (hpet->Id & ACPI_HPET_ID_LEGACY_CAPABLE)
		FUNC2("TRUE}\n");
	else
		FUNC2("FALSE}\n");
	FUNC2("\tPCI Vendor ID=0x%04x\n", hpet->Id >> 16);
	FUNC2("\tMinimal Tick=%d\n", hpet->MinimumTick);
	FUNC2("\tFlags=0x%02x\n", hpet->Flags);
	FUNC2(END_COMMENT);
}