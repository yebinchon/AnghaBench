#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct diff_options {int stat_width; int stat_graph_width; int output_format; int /*<<< orphan*/  detect_rename; } ;
struct commit_list {int dummy; } ;
struct TYPE_5__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_DETECT_RENAME ; 
 int DIFF_FORMAT_DIFFSTAT ; 
 int DIFF_FORMAT_SUMMARY ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*,struct object_id const*,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_4__ merge_msg ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ show_diffstat ; 
 scalar_t__ squash ; 
 int /*<<< orphan*/  FUNC11 (struct commit*,struct commit_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 TYPE_2__* the_repository ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,struct object_id const*,struct object_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void FUNC16(struct commit *head_commit,
		   struct commit_list *remoteheads,
		   const struct object_id *new_head, const char *msg)
{
	struct strbuf reflog_message = STRBUF_INIT;
	const struct object_id *head = &head_commit->object.oid;

	if (!msg)
		FUNC13(&reflog_message, FUNC6("GIT_REFLOG_ACTION"));
	else {
		if (verbosity >= 0)
			FUNC7("%s\n", msg);
		FUNC12(&reflog_message, "%s: %s",
			FUNC6("GIT_REFLOG_ACTION"), msg);
	}
	if (squash) {
		FUNC11(head_commit, remoteheads);
	} else {
		if (verbosity >= 0 && !merge_msg.len)
			FUNC7(FUNC0("No merge message -- not updating HEAD\n"));
		else {
			const char *argv_gc_auto[] = { "gc", "--auto", NULL };
			FUNC15(reflog_message.buf, "HEAD", new_head, head,
				   0, UPDATE_REFS_DIE_ON_ERR);
			/*
			 * We ignore errors in 'gc --auto', since the
			 * user should see them.
			 */
			FUNC1(the_repository->objects);
			FUNC9(argv_gc_auto, RUN_GIT_CMD);
		}
	}
	if (new_head && show_diffstat) {
		struct diff_options opts;
		FUNC8(the_repository, &opts);
		opts.stat_width = -1; /* use full terminal width */
		opts.stat_graph_width = -1; /* respect statGraphWidth config */
		opts.output_format |=
			DIFF_FORMAT_SUMMARY | DIFF_FORMAT_DIFFSTAT;
		opts.detect_rename = DIFF_DETECT_RENAME;
		FUNC3(&opts);
		FUNC4(head, new_head, "", &opts);
		FUNC5(&opts);
		FUNC2(&opts);
	}

	/* Run a post-merge hook */
	FUNC10(NULL, "post-merge", squash ? "1" : "0", NULL);

	FUNC14(&reflog_message);
}