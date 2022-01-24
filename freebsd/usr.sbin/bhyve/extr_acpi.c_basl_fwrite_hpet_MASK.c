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
 int errno ; 
 int /*<<< orphan*/  hpet_capabilities ; 

__attribute__((used)) static int
FUNC2(FILE *fp)
{
	FUNC1(fp, "/*\n");
	FUNC1(fp, " * bhyve HPET template\n");
	FUNC1(fp, " */\n");
	FUNC1(fp, "[0004]\t\tSignature : \"HPET\"\n");
	FUNC1(fp, "[0004]\t\tTable Length : 00000000\n");
	FUNC1(fp, "[0001]\t\tRevision : 01\n");
	FUNC1(fp, "[0001]\t\tChecksum : 00\n");
	FUNC1(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
	FUNC1(fp, "[0008]\t\tOem Table ID : \"BVHPET  \"\n");
	FUNC1(fp, "[0004]\t\tOem Revision : 00000001\n");

	/* iasl will fill in the compiler ID/revision fields */
	FUNC1(fp, "[0004]\t\tAsl Compiler ID : \"xxxx\"\n");
	FUNC1(fp, "[0004]\t\tAsl Compiler Revision : 00000000\n");
	FUNC1(fp, "\n");

	FUNC1(fp, "[0004]\t\tHardware Block ID : %08X\n", hpet_capabilities);
	FUNC1(fp,
	    "[0012]\t\tTimer Block Register : [Generic Address Structure]\n");
	FUNC1(fp, "[0001]\t\tSpace ID : 00 [SystemMemory]\n");
	FUNC1(fp, "[0001]\t\tBit Width : 00\n");
	FUNC1(fp, "[0001]\t\tBit Offset : 00\n");
	FUNC1(fp,
		 "[0001]\t\tEncoded Access Width : 00 [Undefined/Legacy]\n");
	FUNC1(fp, "[0008]\t\tAddress : 00000000FED00000\n");
	FUNC1(fp, "\n");

	FUNC1(fp, "[0001]\t\tSequence Number : 00\n");
	FUNC1(fp, "[0002]\t\tMinimum Clock Ticks : 0000\n");
	FUNC1(fp, "[0004]\t\tFlags (decoded below) : 00000001\n");
	FUNC1(fp, "\t\t\t4K Page Protect : 1\n");
	FUNC1(fp, "\t\t\t64K Page Protect : 0\n");
	FUNC1(fp, "\n");

	FUNC0(fp);

	return (0);

err_exit:
	return (errno);
}