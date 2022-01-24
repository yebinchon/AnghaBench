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
struct prison {int pr_ref; int /*<<< orphan*/  pr_task; int /*<<< orphan*/  pr_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

void
FUNC3(struct prison *pr)
{
	int ref;

	FUNC0(&pr->pr_mtx, MA_OWNED);
	ref = --pr->pr_ref;
	FUNC1(&pr->pr_mtx);
	if (ref == 0)
		FUNC2(taskqueue_thread, &pr->pr_task);
}