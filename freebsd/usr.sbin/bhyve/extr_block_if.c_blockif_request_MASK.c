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
struct blockif_req {int dummy; } ;
struct blockif_ctxt {int /*<<< orphan*/  bc_mtx; int /*<<< orphan*/  bc_cond; int /*<<< orphan*/  bc_freeq; } ;
typedef  enum blockop { ____Placeholder_blockop } blockop ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct blockif_ctxt*,struct blockif_req*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct blockif_ctxt *bc, struct blockif_req *breq,
		enum blockop op)
{
	int err;

	err = 0;

	FUNC3(&bc->bc_mtx);
	if (!FUNC0(&bc->bc_freeq)) {
		/*
		 * Enqueue and inform the block i/o thread
		 * that there is work available
		 */
		if (FUNC1(bc, breq, op))
			FUNC2(&bc->bc_cond);
	} else {
		/*
		 * Callers are not allowed to enqueue more than
		 * the specified blockif queue limit. Return an
		 * error to indicate that the queue length has been
		 * exceeded.
		 */
		err = E2BIG;
	}
	FUNC4(&bc->bc_mtx);

	return (err);
}