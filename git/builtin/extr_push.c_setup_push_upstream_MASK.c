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
struct remote {int /*<<< orphan*/  name; } ;
struct branch {int merge_nr; TYPE_1__** merge; int /*<<< orphan*/  refname; int /*<<< orphan*/  name; int /*<<< orphan*/  remote_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct branch*,struct remote*) ; 
 char* message_detached_head_die ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct remote *remote, struct branch *branch,
				int triangular, int simple)
{
	struct strbuf refspec = STRBUF_INIT;

	if (!branch)
		FUNC1(FUNC0(message_detached_head_die), remote->name);
	if (!branch->merge_nr || !branch->merge || !branch->remote_name)
		FUNC1(FUNC0("The current branch %s has no upstream branch.\n"
		    "To push the current branch and set the remote as upstream, use\n"
		    "\n"
		    "    git push --set-upstream %s %s\n"),
		    branch->name,
		    remote->name,
		    branch->name);
	if (branch->merge_nr != 1)
		FUNC1(FUNC0("The current branch %s has multiple upstream branches, "
		    "refusing to push."), branch->name);
	if (triangular)
		FUNC1(FUNC0("You are pushing to remote '%s', which is not the upstream of\n"
		      "your current branch '%s', without telling me what to push\n"
		      "to update which remote branch."),
		    remote->name, branch->name);

	if (simple) {
		/* Additional safety */
		if (FUNC5(branch->refname, branch->merge[0]->src))
			FUNC2(branch, remote);
	}

	FUNC4(&refspec, "%s:%s", branch->refname, branch->merge[0]->src);
	FUNC3(&rs, refspec.buf);
}