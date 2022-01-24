#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kaioinfo {int /*<<< orphan*/  kaio_syncqueue; } ;
struct kaiocb {TYPE_1__* userproc; } ;
struct TYPE_2__ {struct kaioinfo* p_aioinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kaiocb*) ; 
 int /*<<< orphan*/  FUNC4 (struct kaiocb*) ; 
 int /*<<< orphan*/  list ; 

__attribute__((used)) static void
FUNC5(struct kaiocb *job)
{
	struct kaioinfo *ki;

	ki = job->userproc->p_aioinfo;
	FUNC0(ki);
	if (!FUNC4(job))
		FUNC2(&ki->kaio_syncqueue, job, list);
	FUNC1(ki);
	FUNC3(job);
}