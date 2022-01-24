#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct TYPE_23__ {int Length; int /*<<< orphan*/  Signature; } ;
struct TYPE_22__ {int /*<<< orphan*/ * TableOffsetEntry; } ;
struct TYPE_21__ {int /*<<< orphan*/ * TableOffsetEntry; } ;
typedef  TYPE_1__ ACPI_TABLE_XSDT ;
typedef  TYPE_2__ ACPI_TABLE_RSDT ;
typedef  TYPE_3__ ACPI_TABLE_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_DMAR ; 
 int /*<<< orphan*/  ACPI_SIG_ECDT ; 
 int /*<<< orphan*/  ACPI_SIG_FADT ; 
 int /*<<< orphan*/  ACPI_SIG_HPET ; 
 int /*<<< orphan*/  ACPI_SIG_LPIT ; 
 int /*<<< orphan*/  ACPI_SIG_MADT ; 
 int /*<<< orphan*/  ACPI_SIG_MCFG ; 
 int /*<<< orphan*/  ACPI_SIG_NFIT ; 
 int /*<<< orphan*/  ACPI_SIG_SLIT ; 
 int /*<<< orphan*/  ACPI_SIG_SRAT ; 
 int /*<<< orphan*/  ACPI_SIG_TCPA ; 
 int /*<<< orphan*/  ACPI_SIG_TPM2 ; 
 int /*<<< orphan*/  ACPI_SIG_WDDT ; 
 char* BEGIN_COMMENT ; 
 char* END_COMMENT ; 
 scalar_t__ FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int addr_size ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(ACPI_TABLE_HEADER *rsdp)
{
	ACPI_TABLE_HEADER *sdp;
	ACPI_TABLE_RSDT *rsdt;
	ACPI_TABLE_XSDT *xsdt;
	vm_offset_t addr;
	int entries, i;

	FUNC15(rsdp);
	rsdt = (ACPI_TABLE_RSDT *)rsdp;
	xsdt = (ACPI_TABLE_XSDT *)rsdp;
	entries = (rsdp->Length - sizeof(ACPI_TABLE_HEADER)) / addr_size;
	for (i = 0; i < entries; i++) {
		if (addr_size == 4)
			addr = FUNC17(rsdt->TableOffsetEntry[i]);
		else
			addr = FUNC18(xsdt->TableOffsetEntry[i]);
		if (addr == 0)
			continue;
		sdp = (ACPI_TABLE_HEADER *)FUNC14(addr);
		if (FUNC0(sdp, sdp->Length)) {
			FUNC21("RSDT entry %d (sig %.4s) is corrupt", i,
			    sdp->Signature);
			continue;
		}
		if (!FUNC19(sdp->Signature, ACPI_SIG_FADT, 4))
			FUNC3(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_MADT, 4))
			FUNC6(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_HPET, 4))
			FUNC4(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_ECDT, 4))
			FUNC2(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_MCFG, 4))
			FUNC7(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_SLIT, 4))
			FUNC9(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_SRAT, 4))
			FUNC10(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_TCPA, 4))
			FUNC11(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_DMAR, 4))
			FUNC1(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_NFIT, 4))
			FUNC8(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_WDDT, 4))
			FUNC13(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_LPIT, 4))
			FUNC5(sdp);
		else if (!FUNC19(sdp->Signature, ACPI_SIG_TPM2, 4))
			FUNC12(sdp);
		else {
			FUNC20(BEGIN_COMMENT);
			FUNC16(sdp);
			FUNC20(END_COMMENT);
		}
	}
}