#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int Length; int /*<<< orphan*/  Signature; } ;
struct TYPE_11__ {int /*<<< orphan*/  XDsdt; int /*<<< orphan*/  Dsdt; int /*<<< orphan*/  XFacs; int /*<<< orphan*/  Facs; } ;
struct TYPE_10__ {int /*<<< orphan*/  Length; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  TYPE_2__ ACPI_TABLE_FADT ;
typedef  TYPE_3__ ACPI_TABLE_FACS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_FACS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(ACPI_TABLE_HEADER *sdp)
{
	ACPI_TABLE_HEADER *dsdp;
	ACPI_TABLE_FACS	*facs;
	ACPI_TABLE_FADT *fadt;
	int		fadt_revision;

	fadt = (ACPI_TABLE_FADT *)sdp;
	FUNC5(sdp);

	fadt_revision = FUNC1(fadt);
	if (fadt_revision == 1)
		facs = (ACPI_TABLE_FACS *)FUNC2(fadt->Facs);
	else
		facs = (ACPI_TABLE_FACS *)FUNC2(fadt->XFacs);
	if (FUNC7(facs->Signature, ACPI_SIG_FACS, 4) != 0 || facs->Length < 64)
		FUNC6(1, "FACS is corrupt");
	FUNC4(facs);

	if (fadt_revision == 1)
		dsdp = (ACPI_TABLE_HEADER *)FUNC2(fadt->Dsdt);
	else
		dsdp = (ACPI_TABLE_HEADER *)FUNC2(fadt->XDsdt);
	if (FUNC0(dsdp, dsdp->Length))
		FUNC6(1, "DSDT is corrupt");
	FUNC3(dsdp);
}