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
struct opcode_obj_rewrite {scalar_t__ classifier; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_IPFW ; 
 struct opcode_obj_rewrite* ctl3_rewriters ; 
 int ctl3_rsize ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct opcode_obj_rewrite**,struct opcode_obj_rewrite**) ; 
 int /*<<< orphan*/  FUNC3 (struct opcode_obj_rewrite*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct opcode_obj_rewrite*,struct opcode_obj_rewrite*,size_t) ; 

int
FUNC5(struct opcode_obj_rewrite *rw, size_t count)
{
	size_t sz;
	struct opcode_obj_rewrite *ctl3_max, *ktmp, *lo, *hi;
	int i;

	FUNC0();

	for (i = 0; i < count; i++) {
		if (FUNC2(rw[i].opcode, &lo, &hi) != 0)
			continue;

		for (ktmp = lo; ktmp <= hi; ktmp++) {
			if (ktmp->classifier != rw[i].classifier)
				continue;

			ctl3_max = ctl3_rewriters + ctl3_rsize;
			sz = (ctl3_max - (ktmp + 1)) * sizeof(*ktmp);
			FUNC4(ktmp, ktmp + 1, sz);
			ctl3_rsize--;
			break;
		}

	}

	if (ctl3_rsize == 0) {
		if (ctl3_rewriters != NULL)
			FUNC3(ctl3_rewriters, M_IPFW);
		ctl3_rewriters = NULL;
	}

	FUNC1();

	return (0);
}