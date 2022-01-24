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
struct pipepair {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct pipe {scalar_t__ pipe_present; struct pipepair* pipe_pair; TYPE_1__ pipe_sel; int /*<<< orphan*/  pipe_state; struct pipe* pipe_peer; scalar_t__ pipe_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PIPE_ACTIVE ; 
 scalar_t__ PIPE_CLOSING ; 
 int /*<<< orphan*/  PIPE_EOF ; 
 scalar_t__ PIPE_FINALIZED ; 
 int /*<<< orphan*/  FUNC2 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct pipe*) ; 
 int /*<<< orphan*/  PIPE_WANT ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pipepair*) ; 
 int /*<<< orphan*/  FUNC8 (struct pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pipe*) ; 
 int /*<<< orphan*/  pipe_zone ; 
 int /*<<< orphan*/  FUNC10 (struct pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC12 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct pipepair*) ; 
 int /*<<< orphan*/  FUNC15 (struct pipe*) ; 

__attribute__((used)) static void
FUNC16(struct pipe *cpipe)
{
	struct pipepair *pp;
	struct pipe *ppipe;

	FUNC0(cpipe != NULL, ("pipeclose: cpipe == NULL"));

	FUNC2(cpipe);
	FUNC10(cpipe, 0);
	pp = cpipe->pipe_pair;

	FUNC11(cpipe);

	/*
	 * If the other side is blocked, wake it up saying that
	 * we want to close it down.
	 */
	cpipe->pipe_state |= PIPE_EOF;
	while (cpipe->pipe_busy) {
		FUNC15(cpipe);
		cpipe->pipe_state |= PIPE_WANT;
		FUNC12(cpipe);
		FUNC8(cpipe, FUNC3(cpipe), PRIBIO, "pipecl", 0);
		FUNC10(cpipe, 0);
	}


	/*
	 * Disconnect from peer, if any.
	 */
	ppipe = cpipe->pipe_peer;
	if (ppipe->pipe_present == PIPE_ACTIVE) {
		FUNC11(ppipe);

		ppipe->pipe_state |= PIPE_EOF;
		FUNC15(ppipe);
		FUNC1(&ppipe->pipe_sel.si_note, 0);
	}

	/*
	 * Mark this endpoint as free.  Release kmem resources.  We
	 * don't mark this endpoint as unused until we've finished
	 * doing that, or the pipe might disappear out from under
	 * us.
	 */
	FUNC4(cpipe);
	FUNC9(cpipe);
	FUNC2(cpipe);
	cpipe->pipe_present = PIPE_CLOSING;
	FUNC12(cpipe);

	/*
	 * knlist_clear() may sleep dropping the PIPE_MTX. Set the
	 * PIPE_FINALIZED, that allows other end to free the
	 * pipe_pair, only after the knotes are completely dismantled.
	 */
	FUNC5(&cpipe->pipe_sel.si_note, 1);
	cpipe->pipe_present = PIPE_FINALIZED;
	FUNC13(&cpipe->pipe_sel);
	FUNC6(&cpipe->pipe_sel.si_note);

	/*
	 * If both endpoints are now closed, release the memory for the
	 * pipe pair.  If not, unlock.
	 */
	if (ppipe->pipe_present == PIPE_FINALIZED) {
		FUNC4(cpipe);
#ifdef MAC
		mac_pipe_destroy(pp);
#endif
		FUNC14(pipe_zone, cpipe->pipe_pair);
	} else
		FUNC4(cpipe);
}