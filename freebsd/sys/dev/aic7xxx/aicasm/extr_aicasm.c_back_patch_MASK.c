#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct ins_format3 {int /*<<< orphan*/  address; } ;
struct TYPE_5__ {struct ins_format3 format3; } ;
struct instruction {TYPE_4__* patch_label; TYPE_1__ format; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {TYPE_2__* linfo; } ;
struct TYPE_8__ {scalar_t__ type; char* name; TYPE_3__ info; } ;
struct TYPE_6__ {scalar_t__ address; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 scalar_t__ LABEL ; 
 struct instruction* FUNC0 (int /*<<< orphan*/ *) ; 
 struct instruction* FUNC1 (struct instruction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  seq_program ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct instruction *cur_instr;

	for (cur_instr = FUNC0(&seq_program);
	     cur_instr != NULL;
	     cur_instr = FUNC1(cur_instr, links)) {
		if (cur_instr->patch_label != NULL) {
			struct ins_format3 *f3_instr;
			u_int address;

			if (cur_instr->patch_label->type != LABEL) {
				char buf[255];

				FUNC2(buf, sizeof(buf),
					 "Undefined label %s",
					 cur_instr->patch_label->name);
				FUNC3(buf, EX_DATAERR);
				/* NOTREACHED */
			}
			f3_instr = &cur_instr->format.format3;
			address = f3_instr->address;
			address += cur_instr->patch_label->info.linfo->address;
			f3_instr->address = address;
		}
	}
}