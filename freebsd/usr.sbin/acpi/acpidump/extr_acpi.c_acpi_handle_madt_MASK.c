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
struct TYPE_3__ {int Address; int Flags; } ;
typedef  TYPE_1__ ACPI_TABLE_MADT ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 int ACPI_MADT_PCAT_COMPAT ; 
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  acpi_print_madt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(ACPI_TABLE_HEADER *sdp)
{
	ACPI_TABLE_MADT *madt;

	FUNC2(BEGIN_COMMENT);
	FUNC0(sdp);
	madt = (ACPI_TABLE_MADT *)sdp;
	FUNC2("\tLocal APIC ADDR=0x%08x\n", madt->Address);
	FUNC2("\tFlags={");
	if (madt->Flags & ACPI_MADT_PCAT_COMPAT)
		FUNC2("PC-AT");
	FUNC2("}\n");
	FUNC1(sdp, (madt + 1), acpi_print_madt);
	FUNC2(END_COMMENT);
}