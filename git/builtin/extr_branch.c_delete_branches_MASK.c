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
struct worktree {char* path; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
#define  FILTER_REFS_BRANCHES 129 
#define  FILTER_REFS_REMOTES 128 
 unsigned int INTERPRET_BRANCH_LOCAL ; 
 unsigned int INTERPRET_BRANCH_REMOTE ; 
 int REF_ISBROKEN ; 
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int RESOLVE_REF_ALLOW_BAD_NAME ; 
 int RESOLVE_REF_NO_RECURSE ; 
 int RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,struct object_id*,struct commit*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 struct worktree* FUNC6 (char*,char*) ; 
 char* FUNC7 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  head_oid ; 
 scalar_t__ FUNC9 (struct object_id*) ; 
 struct commit* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC13 (char*,int,struct object_id*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC17(int argc, const char **argv, int force, int kinds,
			   int quiet)
{
	struct commit *head_rev = NULL;
	struct object_id oid;
	char *name = NULL;
	const char *fmt;
	int i;
	int ret = 0;
	int remote_branch = 0;
	struct strbuf bname = STRBUF_INIT;
	unsigned allowed_interpret;

	switch (kinds) {
	case FILTER_REFS_REMOTES:
		fmt = "refs/remotes/%s";
		/* For subsequent UI messages */
		remote_branch = 1;
		allowed_interpret = INTERPRET_BRANCH_REMOTE;

		force = 1;
		break;
	case FILTER_REFS_BRANCHES:
		fmt = "refs/heads/%s";
		allowed_interpret = INTERPRET_BRANCH_LOCAL;
		break;
	default:
		FUNC4(FUNC0("cannot use -a with -d"));
	}

	if (!force) {
		head_rev = FUNC10(the_repository, &head_oid);
		if (!head_rev)
			FUNC4(FUNC0("Couldn't look up commit object for HEAD"));
	}
	for (i = 0; i < argc; i++, FUNC16(&bname)) {
		char *target = NULL;
		int flags = 0;

		FUNC14(&bname, argv[i], allowed_interpret);
		FUNC8(name);
		name = FUNC11(fmt, bname.buf);

		if (kinds == FILTER_REFS_BRANCHES) {
			const struct worktree *wt =
				FUNC6("HEAD", name);
			if (wt) {
				FUNC5(FUNC0("Cannot delete branch '%s' "
					"checked out at '%s'"),
				      bname.buf, wt->path);
				ret = 1;
				continue;
			}
		}

		target = FUNC13(name,
					RESOLVE_REF_READING
					| RESOLVE_REF_NO_RECURSE
					| RESOLVE_REF_ALLOW_BAD_NAME,
					&oid, &flags);
		if (!target) {
			FUNC5(remote_branch
			      ? FUNC0("remote-tracking branch '%s' not found.")
			      : FUNC0("branch '%s' not found."), bname.buf);
			ret = 1;
			continue;
		}

		if (!(flags & (REF_ISSYMREF|REF_ISBROKEN)) &&
		    FUNC1(bname.buf, name, &oid, head_rev, kinds,
					force)) {
			ret = 1;
			goto next;
		}

		if (FUNC3(NULL, name, FUNC9(&oid) ? NULL : &oid,
			       REF_NO_DEREF)) {
			FUNC5(remote_branch
			      ? FUNC0("Error deleting remote-tracking branch '%s'")
			      : FUNC0("Error deleting branch '%s'"),
			      bname.buf);
			ret = 1;
			goto next;
		}
		if (!quiet) {
			FUNC12(remote_branch
			       ? FUNC0("Deleted remote-tracking branch %s (was %s).\n")
			       : FUNC0("Deleted branch %s (was %s).\n"),
			       bname.buf,
			       (flags & REF_ISBROKEN) ? "broken"
			       : (flags & REF_ISSYMREF) ? target
			       : FUNC7(&oid, DEFAULT_ABBREV));
		}
		FUNC2(bname.buf);

	next:
		FUNC8(target);
	}

	FUNC8(name);
	FUNC15(&bname);

	return ret;
}