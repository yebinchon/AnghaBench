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
struct worktree {char* path; char* head_ref; scalar_t__ is_detached; int /*<<< orphan*/  head_oid; scalar_t__ is_bare; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct worktree *wt)
{
	FUNC1("worktree %s\n", wt->path);
	if (wt->is_bare)
		FUNC1("bare\n");
	else {
		FUNC1("HEAD %s\n", FUNC0(&wt->head_oid));
		if (wt->is_detached)
			FUNC1("detached\n");
		else if (wt->head_ref)
			FUNC1("branch %s\n", wt->head_ref);
	}
	FUNC1("\n");
}