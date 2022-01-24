#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int len; char* buf; } ;
struct rev_info {int ignore_merges; int limited; int /*<<< orphan*/  commit_format; } ;
struct object_id {int dummy; } ;
struct merge_parents {void* item; } ;
struct fmt_merge_msg_opts {scalar_t__ shortlog_len; scalar_t__ add_title; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  merge_parents ;
struct TYPE_6__ {int nr; TYPE_1__* items; } ;
struct TYPE_5__ {scalar_t__ nr; } ;
struct TYPE_4__ {int /*<<< orphan*/  util; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_parents*,struct strbuf*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (char*,struct merge_parents*) ; 
 struct commit* FUNC6 (struct object_id*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct merge_parents*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ origins ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct commit*,struct rev_info*,struct fmt_merge_msg_opts*,struct strbuf*) ; 
 TYPE_2__ srcs ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 char* FUNC13 (char*,char) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC15(struct strbuf *in, struct strbuf *out,
		  struct fmt_merge_msg_opts *opts)
{
	int i = 0, pos = 0;
	struct object_id head_oid;
	const char *current_branch;
	void *current_branch_to_free;
	struct merge_parents merge_parents;

	FUNC7(&merge_parents, 0, sizeof(merge_parents));

	/* get current branch */
	current_branch = current_branch_to_free =
		FUNC9("HEAD", RESOLVE_REF_READING, &head_oid, NULL);
	if (!current_branch)
		FUNC0("No current branch");
	if (FUNC11(current_branch, "refs/heads/"))
		current_branch += 11;

	FUNC1(&merge_parents, in, &head_oid);

	/* get a line */
	while (pos < in->len) {
		int len;
		char *newline, *p = in->buf + pos;

		newline = FUNC13(p, '\n');
		len = newline ? newline - p : FUNC14(p);
		pos += len + !!newline;
		i++;
		p[len] = 0;
		if (FUNC5(p, &merge_parents))
			FUNC0("error in line %d: %.*s", i, len, p);
	}

	if (opts->add_title && srcs.nr)
		FUNC3(out, current_branch);

	if (origins.nr)
		FUNC2(out);

	if (opts->shortlog_len) {
		struct commit *head;
		struct rev_info rev;

		head = FUNC6(&head_oid, "HEAD");
		FUNC8(the_repository, &rev, NULL);
		rev.commit_format = CMIT_FMT_ONELINE;
		rev.ignore_merges = 1;
		rev.limited = 1;

		FUNC12(out);

		for (i = 0; i < origins.nr; i++)
			FUNC10(origins.items[i].string,
				 origins.items[i].util,
				 head, &rev, opts, out);
	}

	FUNC12(out);
	FUNC4(current_branch_to_free);
	FUNC4(merge_parents.item);
	return 0;
}