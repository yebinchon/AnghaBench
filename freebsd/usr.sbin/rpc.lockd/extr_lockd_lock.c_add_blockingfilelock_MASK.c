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
struct file_lock {scalar_t__ blocking; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct file_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blockedlocklist_head ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct file_lock*) ; 
 int /*<<< orphan*/  nfslocklist ; 

void
FUNC3(struct file_lock *fl)
{
	FUNC1("Entering add_blockingfilelock\n");

	/*
	 * A blocking lock request _should_ never be duplicated as a client
	 * that is already blocked shouldn't be able to request another
	 * lock. Alas, there are some buggy clients that do request the same
	 * lock repeatedly. Make sure only unique locks are on the blocked
	 * lock list.
	 */
	if (FUNC2(fl)) {
		FUNC1("Exiting add_blockingfilelock: already blocked\n");
		return;
	}

	/*
	 * Clear the blocking flag so that it can be reused without
	 * adding it to the blocking queue a second time
	 */

	fl->blocking = 0;
	FUNC0(&blockedlocklist_head, fl, nfslocklist);

	FUNC1("Exiting add_blockingfilelock: added blocked lock\n");
}