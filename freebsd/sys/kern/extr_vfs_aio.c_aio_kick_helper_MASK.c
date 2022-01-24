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
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  aio_job_mtx ; 
 scalar_t__ FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *context, int pending)
{
	struct proc *userp = context;

	FUNC1(&aio_job_mtx);
	while (--pending >= 0) {
		if (FUNC0(userp))
			break;
	}
	FUNC2(&aio_job_mtx);
}