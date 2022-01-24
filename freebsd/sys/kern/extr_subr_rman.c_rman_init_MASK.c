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
struct rman {scalar_t__ rm_start; scalar_t__ rm_type; int /*<<< orphan*/ * rm_mtx; int /*<<< orphan*/  rm_list; int /*<<< orphan*/  rm_end; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_RMAN ; 
 int M_ZERO ; 
 scalar_t__ RMAN_GAUGE ; 
 scalar_t__ RMAN_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  rm_link ; 
 int /*<<< orphan*/  rman_head ; 
 int /*<<< orphan*/  rman_mtx ; 

int
FUNC7(struct rman *rm)
{
	static int once = 0;

	if (once == 0) {
		once = 1;
		FUNC0(&rman_head);
		FUNC3(&rman_mtx, "rman head", NULL, MTX_DEF);
	}

	if (rm->rm_start == 0 && rm->rm_end == 0)
		rm->rm_end = ~0;
	if (rm->rm_type == RMAN_UNINIT)
		FUNC6("rman_init");
	if (rm->rm_type == RMAN_GAUGE)
		FUNC6("implement RMAN_GAUGE");

	FUNC0(&rm->rm_list);
	rm->rm_mtx = FUNC2(sizeof *rm->rm_mtx, M_RMAN, M_NOWAIT | M_ZERO);
	if (rm->rm_mtx == NULL)
		return ENOMEM;
	FUNC3(rm->rm_mtx, "rman", NULL, MTX_DEF);

	FUNC4(&rman_mtx);
	FUNC1(&rman_head, rm, rm_link);
	FUNC5(&rman_mtx);
	return 0;
}