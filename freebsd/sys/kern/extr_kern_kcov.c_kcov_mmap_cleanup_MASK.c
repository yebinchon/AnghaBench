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
struct thread {int dummy; } ;
struct kcov_info {struct thread* thread; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  KCOV_STATE_DYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kcov_info*) ; 
 int /*<<< orphan*/  kcov_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct kcov_info *info = arg;
	struct thread *thread;

	FUNC3(&kcov_lock);
	/*
	 * Move to KCOV_STATE_DYING to stop adding new entries.
	 *
	 * If the thread is running we need to wait until thread exit to
	 * clean up as it may currently be adding a new entry. If this is
	 * the case being in KCOV_STATE_DYING will signal that the buffer
	 * needs to be cleaned up.
	 */
	FUNC0(&info->state, KCOV_STATE_DYING);
	FUNC1();
	thread = info->thread;
	FUNC4(&kcov_lock);

	if (thread != NULL)
		return;

	/*
	 * We can safely clean up the info struct as it is in the
	 * KCOV_STATE_DYING state with no thread associated.
	 *
	 * The KCOV_STATE_DYING stops new threads from using it.
	 * The lack of a thread means nothing is currently using the buffers.
	 */
	FUNC2(info);
}