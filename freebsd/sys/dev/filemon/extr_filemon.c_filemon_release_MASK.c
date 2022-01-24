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
struct filemon {int /*<<< orphan*/  lock; int /*<<< orphan*/ * cred; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_FILEMON ; 
 int /*<<< orphan*/  SA_UNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct filemon*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct filemon *filemon)
{

	if (FUNC2(&filemon->refcnt) == 0)
		return;
	/*
	 * There are valid cases of releasing while locked, such as in
	 * filemon_untrack_processes, but none which are done where there
	 * is not at least 1 reference remaining.
	 */
	FUNC3(&filemon->lock, SA_UNLOCKED);

	if (filemon->cred != NULL)
		FUNC0(filemon->cred);
	FUNC4(&filemon->lock);
	FUNC1(filemon, M_FILEMON);
}