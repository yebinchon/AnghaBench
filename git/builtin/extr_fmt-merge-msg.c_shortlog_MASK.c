#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_2__* items; } ;
struct strbuf {int /*<<< orphan*/  len; } ;
struct TYPE_7__ {scalar_t__ nr; } ;
struct rev_info {TYPE_3__ pending; int /*<<< orphan*/ * commits; } ;
struct pretty_print_context {int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct origin_data {scalar_t__ is_local_branch; struct object_id oid; } ;
struct object {scalar_t__ type; int flags; struct object_id const oid; } ;
struct fmt_merge_msg_opts {int shortlog_len; scalar_t__ credit_people; } ;
struct commit {struct object object; TYPE_1__* parents; } ;
struct TYPE_8__ {int /*<<< orphan*/  hexsz; } ;
struct TYPE_6__ {char const* string; } ;
struct TYPE_5__ {scalar_t__ next; } ;

/* Variables and functions */
 int ADDED ; 
 scalar_t__ OBJ_COMMIT ; 
 int SEEN ; 
 int SHOWN ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int TREESAME ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct string_list*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,int) ; 
 struct object* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct commit* FUNC8 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct object_id const*) ; 
 scalar_t__ FUNC11 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC12 (char,struct string_list*,struct commit*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct string_list*,int /*<<< orphan*/ ) ; 
 TYPE_4__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ use_branch_desc ; 

__attribute__((used)) static void FUNC21(const char *name,
		     struct origin_data *origin_data,
		     struct commit *head,
		     struct rev_info *rev,
		     struct fmt_merge_msg_opts *opts,
		     struct strbuf *out)
{
	int i, count = 0;
	struct commit *commit;
	struct object *branch;
	struct string_list subjects = STRING_LIST_INIT_DUP;
	struct string_list authors = STRING_LIST_INIT_DUP;
	struct string_list committers = STRING_LIST_INIT_DUP;
	int flags = UNINTERESTING | TREESAME | SEEN | SHOWN | ADDED;
	struct strbuf sb = STRBUF_INIT;
	const struct object_id *oid = &origin_data->oid;
	int limit = opts->shortlog_len;

	branch = FUNC4(the_repository, FUNC10(the_repository, oid),
			   FUNC9(oid),
			   the_hash_algo->hexsz);
	if (!branch || branch->type != OBJ_COMMIT)
		return;

	FUNC13(0, NULL, rev, NULL);
	FUNC1(rev, branch, name);
	FUNC1(rev, &head->object, "^HEAD");
	head->object.flags |= UNINTERESTING;
	if (FUNC11(rev))
		FUNC5("revision walk setup failed");
	while ((commit = FUNC8(rev)) != NULL) {
		struct pretty_print_context ctx = {0};

		if (commit->parents && commit->parents->next) {
			/* do not list a merge but count committer */
			if (opts->credit_people)
				FUNC12('c', &committers, commit);
			continue;
		}
		if (!count && opts->credit_people)
			/* the 'tip' committer */
			FUNC12('c', &committers, commit);
		if (opts->credit_people)
			FUNC12('a', &authors, commit);
		count++;
		if (subjects.nr > limit)
			continue;

		FUNC6(commit, "%s", &sb, &ctx);
		FUNC17(&sb);

		if (!sb.len)
			FUNC18(&subjects,
					   FUNC9(&commit->object.oid));
		else
			FUNC19(&subjects,
						 FUNC16(&sb, NULL));
	}

	if (opts->credit_people)
		FUNC2(out, &authors, &committers);
	if (count > limit)
		FUNC14(out, "\n* %s: (%d commits)\n", name, count);
	else
		FUNC14(out, "\n* %s:\n", name);

	if (origin_data->is_local_branch && use_branch_desc)
		FUNC0(out, name);

	for (i = 0; i < subjects.nr; i++)
		if (i >= limit)
			FUNC15(out, "  ...\n");
		else
			FUNC14(out, "  %s\n", subjects.items[i].string);

	FUNC3((struct commit *)branch, flags);
	FUNC3(head, flags);
	FUNC7(rev->commits);
	rev->commits = NULL;
	rev->pending.nr = 0;

	FUNC20(&authors, 0);
	FUNC20(&committers, 0);
	FUNC20(&subjects, 0);
}