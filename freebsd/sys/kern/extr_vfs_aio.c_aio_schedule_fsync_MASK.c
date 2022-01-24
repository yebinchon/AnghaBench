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
struct kaioinfo {int /*<<< orphan*/  kaio_syncready; } ;
struct kaiocb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kaiocb* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aio_process_sync ; 
 int /*<<< orphan*/  FUNC5 (struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 

__attribute__((used)) static void
FUNC6(void *context, int pending)
{
	struct kaioinfo *ki;
	struct kaiocb *job;

	ki = context;
	FUNC0(ki);
	while (!FUNC2(&ki->kaio_syncready)) {
		job = FUNC3(&ki->kaio_syncready);
		FUNC4(&ki->kaio_syncready, job, list);
		FUNC1(ki);
		FUNC5(job, aio_process_sync);
		FUNC0(ki);
	}
	FUNC1(ki);
}