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
struct instruction {int /*<<< orphan*/  srcline; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct instruction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct instruction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  seq_program ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yylineno ; 

struct instruction *
FUNC4(void)
{
	struct instruction *new_instr;

	new_instr = (struct instruction *)FUNC1(sizeof(struct instruction));
	if (new_instr == NULL)
		FUNC3("Unable to malloc instruction object", EX_SOFTWARE);
	FUNC2(new_instr, 0, sizeof(*new_instr));
	FUNC0(&seq_program, new_instr, links);
	new_instr->srcline = yylineno;
	return new_instr;
}