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
struct TYPE_3__ {int Length; int Revision; int Checksum; int OemRevision; int AslCompilerRevision; int /*<<< orphan*/  AslCompilerId; int /*<<< orphan*/  OemTableId; int /*<<< orphan*/  OemId; int /*<<< orphan*/  Signature; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_OEM_ID_SIZE ; 
 int /*<<< orphan*/  ACPI_OEM_TABLE_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(ACPI_TABLE_HEADER *sdp)
{
	FUNC1("  ");
	FUNC0(sdp->Signature, ACPI_NAMESEG_SIZE);
	FUNC1(": Length=%d, Revision=%d, Checksum=%d,\n",
	       sdp->Length, sdp->Revision, sdp->Checksum);
	FUNC1("\tOEMID=");
	FUNC0(sdp->OemId, ACPI_OEM_ID_SIZE);
	FUNC1(", OEM Table ID=");
	FUNC0(sdp->OemTableId, ACPI_OEM_TABLE_ID_SIZE);
	FUNC1(", OEM Revision=0x%x,\n", sdp->OemRevision);
	FUNC1("\tCreator ID=");
	FUNC0(sdp->AslCompilerId, ACPI_NAMESEG_SIZE);
	FUNC1(", Creator Revision=0x%x\n", sdp->AslCompilerRevision);
}