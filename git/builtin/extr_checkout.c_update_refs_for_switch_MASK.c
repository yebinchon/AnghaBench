#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct checkout_opts {char* new_branch; char* new_orphan_branch; scalar_t__ force_detach; int /*<<< orphan*/  quiet; scalar_t__ branch_exists; scalar_t__ new_branch_force; int /*<<< orphan*/  track; int /*<<< orphan*/  new_branch_log; } ;
struct branch_info {char* name; char* path; TYPE_2__* commit; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 char* FUNC0 (char*) ; 
 scalar_t__ advice_detached_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct branch_info*) ; 
 int FUNC16 (char*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct branch_info*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(const struct checkout_opts *opts,
				   struct branch_info *old_branch_info,
				   struct branch_info *new_branch_info)
{
	struct strbuf msg = STRBUF_INIT;
	const char *old_desc, *reflog_msg;
	if (opts->new_branch) {
		if (opts->new_orphan_branch) {
			char *refname;

			refname = FUNC10("refs/heads/%s", opts->new_orphan_branch);
			if (opts->new_branch_log &&
			    !FUNC18(refname)) {
				int ret;
				struct strbuf err = STRBUF_INIT;

				ret = FUNC16(refname, 1, &err);
				if (ret) {
					FUNC7(stderr, FUNC0("Can not do reflog for '%s': %s\n"),
						opts->new_orphan_branch, err.buf);
					FUNC21(&err);
					FUNC8(refname);
					return;
				}
				FUNC21(&err);
			}
			FUNC8(refname);
		}
		else
			FUNC1(the_repository,
				      opts->new_branch, new_branch_info->name,
				      opts->new_branch_force ? 1 : 0,
				      opts->new_branch_force ? 1 : 0,
				      opts->new_branch_log,
				      opts->quiet,
				      opts->track);
		new_branch_info->name = opts->new_branch;
		FUNC17(new_branch_info);
	}

	old_desc = old_branch_info->name;
	if (!old_desc && old_branch_info->commit)
		old_desc = FUNC11(&old_branch_info->commit->object.oid);

	reflog_msg = FUNC9("GIT_REFLOG_ACTION");
	if (!reflog_msg)
		FUNC19(&msg, "checkout: moving from %s to %s",
			old_desc ? old_desc : "(invalid)", new_branch_info->name);
	else
		FUNC20(&msg, 0, reflog_msg, FUNC23(reflog_msg));

	if (!FUNC22(new_branch_info->name, "HEAD") && !new_branch_info->path && !opts->force_detach) {
		/* Nothing to do. */
	} else if (opts->force_detach || !new_branch_info->path) {	/* No longer on any branch. */
		FUNC24(msg.buf, "HEAD", &new_branch_info->commit->object.oid, NULL,
			   REF_NO_DEREF, UPDATE_REFS_DIE_ON_ERR);
		if (!opts->quiet) {
			if (old_branch_info->path &&
			    advice_detached_head && !opts->force_detach)
				FUNC5(new_branch_info->name);
			FUNC4(FUNC0("HEAD is now at"), new_branch_info->commit);
		}
	} else if (new_branch_info->path) {	/* Switch branches. */
		if (FUNC2("HEAD", new_branch_info->path, msg.buf) < 0)
			FUNC6(FUNC0("unable to update HEAD"));
		if (!opts->quiet) {
			if (old_branch_info->path && !FUNC22(new_branch_info->path, old_branch_info->path)) {
				if (opts->new_branch_force)
					FUNC7(stderr, FUNC0("Reset branch '%s'\n"),
						new_branch_info->name);
				else
					FUNC7(stderr, FUNC0("Already on '%s'\n"),
						new_branch_info->name);
			} else if (opts->new_branch) {
				if (opts->branch_exists)
					FUNC7(stderr, FUNC0("Switched to and reset branch '%s'\n"), new_branch_info->name);
				else
					FUNC7(stderr, FUNC0("Switched to a new branch '%s'\n"), new_branch_info->name);
			} else {
				FUNC7(stderr, FUNC0("Switched to branch '%s'\n"),
					new_branch_info->name);
			}
		}
		if (old_branch_info->path && old_branch_info->name) {
			if (!FUNC12(old_branch_info->path) && FUNC13(old_branch_info->path))
				FUNC3(old_branch_info->path);
		}
	}
	FUNC14(the_repository, !opts->quiet);
	FUNC21(&msg);
	if (!opts->quiet &&
	    (new_branch_info->path || (!opts->force_detach && !FUNC22(new_branch_info->name, "HEAD"))))
		FUNC15(new_branch_info);
}