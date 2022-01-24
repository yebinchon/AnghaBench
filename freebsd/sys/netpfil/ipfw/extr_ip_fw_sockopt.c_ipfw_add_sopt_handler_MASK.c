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
struct ipfw_sopt_handler {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  compare_sh ; 
 int /*<<< orphan*/  ctl3_gencnt ; 
 struct ipfw_sopt_handler* ctl3_handlers ; 
 size_t ctl3_hsize ; 
 int /*<<< orphan*/  FUNC2 (struct ipfw_sopt_handler*,int /*<<< orphan*/ ) ; 
 struct ipfw_sopt_handler* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipfw_sopt_handler*,struct ipfw_sopt_handler*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ipfw_sopt_handler*,size_t,int,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ipfw_sopt_handler *sh, size_t count)
{
	size_t sz;
	struct ipfw_sopt_handler *tmp;

	FUNC0();

	for (;;) {
		sz = ctl3_hsize + count;
		FUNC1();
		tmp = FUNC3(sizeof(*sh) * sz, M_IPFW, M_WAITOK | M_ZERO);
		FUNC0();
		if (ctl3_hsize + count <= sz)
			break;

		/* Retry */
		FUNC2(tmp, M_IPFW);
	}

	/* Merge old & new arrays */
	sz = ctl3_hsize + count;
	FUNC4(tmp, ctl3_handlers, ctl3_hsize * sizeof(*sh));
	FUNC4(&tmp[ctl3_hsize], sh, count * sizeof(*sh));
	FUNC5(tmp, sz, sizeof(*sh), compare_sh);
	/* Switch new and free old */
	if (ctl3_handlers != NULL)
		FUNC2(ctl3_handlers, M_IPFW);
	ctl3_handlers = tmp;
	ctl3_hsize = sz;
	ctl3_gencnt++;

	FUNC1();
}