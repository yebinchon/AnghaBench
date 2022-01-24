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
struct TYPE_3__ {int Revision; int RsdtPhysicalAddress; int Checksum; int /*<<< orphan*/  ExtendedChecksum; int /*<<< orphan*/  Length; scalar_t__ XsdtPhysicalAddress; int /*<<< orphan*/  OemId; } ;
typedef  TYPE_1__ ACPI_TABLE_RSDP ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_OEM_ID_SIZE ; 
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(ACPI_TABLE_RSDP *rp)
{
	FUNC1(BEGIN_COMMENT);
	FUNC1("  RSD PTR: OEM=");
	FUNC0(rp->OemId, ACPI_OEM_ID_SIZE);
	FUNC1(", ACPI_Rev=%s (%d)\n", rp->Revision < 2 ? "1.0x" : "2.0x",
	       rp->Revision);
	if (rp->Revision < 2) {
		FUNC1("\tRSDT=0x%08x, cksum=%u\n", rp->RsdtPhysicalAddress,
		    rp->Checksum);
	} else {
		FUNC1("\tXSDT=0x%016jx, length=%u, cksum=%u\n",
		    (uintmax_t)rp->XsdtPhysicalAddress, rp->Length,
		    rp->ExtendedChecksum);
	}
	FUNC1(END_COMMENT);
}