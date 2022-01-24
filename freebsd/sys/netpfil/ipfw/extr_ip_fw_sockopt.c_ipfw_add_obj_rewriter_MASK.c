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
struct opcode_obj_rewrite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  compare_opcodes ; 
 struct opcode_obj_rewrite* ctl3_rewriters ; 
 size_t ctl3_rsize ; 
 int /*<<< orphan*/  FUNC2 (struct opcode_obj_rewrite*,int /*<<< orphan*/ ) ; 
 struct opcode_obj_rewrite* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct opcode_obj_rewrite*,struct opcode_obj_rewrite*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct opcode_obj_rewrite*,size_t,int,int /*<<< orphan*/ ) ; 

void
FUNC6(struct opcode_obj_rewrite *rw, size_t count)
{
	size_t sz;
	struct opcode_obj_rewrite *tmp;

	FUNC0();

	for (;;) {
		sz = ctl3_rsize + count;
		FUNC1();
		tmp = FUNC3(sizeof(*rw) * sz, M_IPFW, M_WAITOK | M_ZERO);
		FUNC0();
		if (ctl3_rsize + count <= sz)
			break;

		/* Retry */
		FUNC2(tmp, M_IPFW);
	}

	/* Merge old & new arrays */
	sz = ctl3_rsize + count;
	FUNC4(tmp, ctl3_rewriters, ctl3_rsize * sizeof(*rw));
	FUNC4(&tmp[ctl3_rsize], rw, count * sizeof(*rw));
	FUNC5(tmp, sz, sizeof(*rw), compare_opcodes);
	/* Switch new and free old */
	if (ctl3_rewriters != NULL)
		FUNC2(ctl3_rewriters, M_IPFW);
	ctl3_rewriters = tmp;
	ctl3_rsize = sz;

	FUNC1();
}