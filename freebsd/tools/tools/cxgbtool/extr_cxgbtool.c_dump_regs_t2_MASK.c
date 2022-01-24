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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  cspi_regs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  espi_regs ; 
 int /*<<< orphan*/  mc3_regs ; 
 int /*<<< orphan*/  mc4_regs ; 
 int /*<<< orphan*/  mc5_regs ; 
 int /*<<< orphan*/  pl_regs ; 
 int /*<<< orphan*/  rat_regs ; 
 int /*<<< orphan*/  sge_regs ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  tp_regs ; 
 int /*<<< orphan*/  tpi_regs ; 
 int /*<<< orphan*/  ulp_regs ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[], int start_arg, uint32_t *regs)
{
	int match = 0;
	char *block_name = NULL;

	if (argc == start_arg + 1)
		block_name = argv[start_arg];
	else if (argc != start_arg)
		return -1;

	if (!block_name || !FUNC2(block_name, "sge"))
		match += FUNC0(sge_regs, regs);
	if (!block_name || !FUNC2(block_name, "mc3"))
		match += FUNC0(mc3_regs, regs);
	if (!block_name || !FUNC2(block_name, "mc4"))
		match += FUNC0(mc4_regs, regs);
	if (!block_name || !FUNC2(block_name, "tpi"))
		match += FUNC0(tpi_regs, regs);
	if (!block_name || !FUNC2(block_name, "tp"))
		match += FUNC0(tp_regs, regs);
	if (!block_name || !FUNC2(block_name, "rat"))
		match += FUNC0(rat_regs, regs);
	if (!block_name || !FUNC2(block_name, "cspi"))
		match += FUNC0(cspi_regs, regs);
	if (!block_name || !FUNC2(block_name, "espi"))
		match += FUNC0(espi_regs, regs);
	if (!block_name || !FUNC2(block_name, "ulp"))
		match += FUNC0(ulp_regs, regs);
	if (!block_name || !FUNC2(block_name, "pl"))
		match += FUNC0(pl_regs, regs);
	if (!block_name || !FUNC2(block_name, "mc5"))
		match += FUNC0(mc5_regs, regs);
	if (!match)
		FUNC1(1, "unknown block \"%s\"", block_name);
	return 0;
}