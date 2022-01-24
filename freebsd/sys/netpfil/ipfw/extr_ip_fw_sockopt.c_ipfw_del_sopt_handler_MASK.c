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
struct ipfw_sopt_handler {int /*<<< orphan*/  handler; int /*<<< orphan*/  version; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  ctl3_gencnt ; 
 struct ipfw_sopt_handler* ctl3_handlers ; 
 int ctl3_hsize ; 
 struct ipfw_sopt_handler* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipfw_sopt_handler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipfw_sopt_handler*,struct ipfw_sopt_handler*,size_t) ; 

int
FUNC5(struct ipfw_sopt_handler *sh, size_t count)
{
	size_t sz;
	struct ipfw_sopt_handler *tmp, *h;
	int i;

	FUNC0();

	for (i = 0; i < count; i++) {
		tmp = &sh[i];
		h = FUNC2(tmp->opcode, tmp->version, tmp->handler);
		if (h == NULL)
			continue;

		sz = (ctl3_handlers + ctl3_hsize - (h + 1)) * sizeof(*h);
		FUNC4(h, h + 1, sz);
		ctl3_hsize--;
	}

	if (ctl3_hsize == 0) {
		if (ctl3_handlers != NULL)
			FUNC3(ctl3_handlers, M_IPFW);
		ctl3_handlers = NULL;
	}

	ctl3_gencnt++;

	FUNC1();

	return (0);
}