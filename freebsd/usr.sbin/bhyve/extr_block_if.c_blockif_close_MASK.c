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
struct blockif_ctxt {scalar_t__ bc_magic; int bc_closing; int /*<<< orphan*/  bc_fd; int /*<<< orphan*/ * bc_btid; int /*<<< orphan*/  bc_cond; int /*<<< orphan*/  bc_mtx; } ;

/* Variables and functions */
 int BLOCKIF_NUMTHR ; 
 scalar_t__ BLOCKIF_SIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct blockif_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct blockif_ctxt *bc)
{
	void *jval;
	int i;

	FUNC0(bc->bc_magic == BLOCKIF_SIG);

	/*
	 * Stop the block i/o thread
	 */
	FUNC5(&bc->bc_mtx);
	bc->bc_closing = 1;
	FUNC6(&bc->bc_mtx);
	FUNC3(&bc->bc_cond);
	for (i = 0; i < BLOCKIF_NUMTHR; i++)
		FUNC4(bc->bc_btid[i], &jval);

	/* XXX Cancel queued i/o's ??? */

	/*
	 * Release resources
	 */
	bc->bc_magic = 0;
	FUNC1(bc->bc_fd);
	FUNC2(bc);

	return (0);
}