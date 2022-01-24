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
struct cfjail {int /*<<< orphan*/ * queue; int /*<<< orphan*/ * dep; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 size_t DEP_FROM ; 
 size_t DEP_TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfjail*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfjails ; 
 struct cfjail* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfjail*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tq ; 

struct cfjail *
FUNC5(void)
{
	struct cfjail *j;

	j = FUNC3(sizeof(struct cfjail));
	FUNC4(j, 0, sizeof(struct cfjail));
	FUNC1(&j->params);
	FUNC0(&j->dep[DEP_FROM]);
	FUNC0(&j->dep[DEP_TO]);
	j->queue = &cfjails;
	FUNC2(&cfjails, j, tq);
	return j;
}