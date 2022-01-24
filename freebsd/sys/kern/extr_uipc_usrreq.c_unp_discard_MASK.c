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
struct unp_defer {struct file* ud_fp; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct unp_defer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 struct unp_defer* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  ud_link ; 
 int /*<<< orphan*/  unp_defer_task ; 
 int /*<<< orphan*/  unp_defers ; 
 int /*<<< orphan*/  unp_defers_count ; 
 scalar_t__ FUNC7 (struct file*) ; 

__attribute__((used)) static void
FUNC8(struct file *fp)
{
	struct unp_defer *dr;

	if (FUNC7(fp)) {
		dr = FUNC5(sizeof(*dr), M_TEMP, M_WAITOK);
		dr->ud_fp = fp;
		FUNC1();
		FUNC0(&unp_defers, dr, ud_link);
		FUNC2();
		FUNC3(&unp_defers_count, 1);
		FUNC6(taskqueue_thread, &unp_defer_task);
	} else
		(void) FUNC4(fp, (struct thread *)NULL);
}