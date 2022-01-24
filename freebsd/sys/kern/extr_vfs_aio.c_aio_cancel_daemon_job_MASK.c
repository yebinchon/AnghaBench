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
struct kaiocb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC2 (struct kaiocb*) ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  aio_jobs ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct kaiocb *job)
{

	FUNC3(&aio_job_mtx);
	if (!FUNC2(job))
		FUNC0(&aio_jobs, job, list);
	FUNC4(&aio_job_mtx);
	FUNC1(job);
}