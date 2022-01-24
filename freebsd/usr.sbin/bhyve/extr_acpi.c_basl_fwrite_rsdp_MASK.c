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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ RSDT_OFFSET ; 
 scalar_t__ XSDT_OFFSET ; 
 scalar_t__ basl_acpi_base ; 
 int errno ; 

__attribute__((used)) static int
FUNC2(FILE *fp)
{
	FUNC1(fp, "/*\n");
	FUNC1(fp, " * bhyve RSDP template\n");
	FUNC1(fp, " */\n");
	FUNC1(fp, "[0008]\t\tSignature : \"RSD PTR \"\n");
	FUNC1(fp, "[0001]\t\tChecksum : 43\n");
	FUNC1(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
	FUNC1(fp, "[0001]\t\tRevision : 02\n");
	FUNC1(fp, "[0004]\t\tRSDT Address : %08X\n",
	    basl_acpi_base + RSDT_OFFSET);
	FUNC1(fp, "[0004]\t\tLength : 00000024\n");
	FUNC1(fp, "[0008]\t\tXSDT Address : 00000000%08X\n",
	    basl_acpi_base + XSDT_OFFSET);
	FUNC1(fp, "[0001]\t\tExtended Checksum : 00\n");
	FUNC1(fp, "[0003]\t\tReserved : 000000\n");

	FUNC0(fp);

	return (0);

err_exit:
	return (errno);
}