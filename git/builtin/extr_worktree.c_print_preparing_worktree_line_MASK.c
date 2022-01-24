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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct commit* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(int detach,
					  const char *branch,
					  const char *new_branch,
					  int force_new_branch)
{
	if (force_new_branch) {
		struct commit *commit = FUNC3(new_branch);
		if (!commit)
			FUNC4(FUNC0("Preparing worktree (new branch '%s')"), new_branch);
		else
			FUNC4(FUNC0("Preparing worktree (resetting branch '%s'; was at %s)"),
				  new_branch,
				  FUNC2(&commit->object.oid, DEFAULT_ABBREV));
	} else if (new_branch) {
		FUNC4(FUNC0("Preparing worktree (new branch '%s')"), new_branch);
	} else {
		struct strbuf s = STRBUF_INIT;
		if (!detach && !FUNC6(&s, branch) &&
		    FUNC5(s.buf))
			FUNC4(FUNC0("Preparing worktree (checking out '%s')"),
				  branch);
		else {
			struct commit *commit = FUNC3(branch);
			if (!commit)
				FUNC1(FUNC0("invalid reference: %s"), branch);
			FUNC4(FUNC0("Preparing worktree (detached HEAD %s)"),
				  FUNC2(&commit->object.oid, DEFAULT_ABBREV));
		}
		FUNC7(&s);
	}
}