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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct rev_info {int ignore_merges; int /*<<< orphan*/  commit_format; int /*<<< orphan*/  date_mode; int /*<<< orphan*/  abbrev; } ;
struct pretty_print_context {int /*<<< orphan*/  fmt; int /*<<< orphan*/  date_mode; int /*<<< orphan*/  abbrev; int /*<<< orphan*/  member_0; } ;
struct commit_list {TYPE_1__* item; struct commit_list* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_MEDIUM ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct commit* FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pretty_print_context*,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct commit *commit, struct commit_list *remoteheads)
{
	struct rev_info rev;
	struct strbuf out = STRBUF_INIT;
	struct commit_list *j;
	struct pretty_print_context ctx = {0};

	FUNC8(FUNC0("Squash commit -- not updating HEAD\n"));

	FUNC9(the_repository, &rev, NULL);
	rev.ignore_merges = 1;
	rev.commit_format = CMIT_FMT_MEDIUM;

	commit->object.flags |= UNINTERESTING;
	FUNC1(&rev, &commit->object, NULL);

	for (j = remoteheads; j; j = j->next)
		FUNC1(&rev, &j->item->object, NULL);

	FUNC10(0, NULL, &rev, NULL);
	if (FUNC6(&rev))
		FUNC2(FUNC0("revision walk setup failed"));

	ctx.abbrev = rev.abbrev;
	ctx.date_mode = rev.date_mode;
	ctx.fmt = rev.commit_format;

	FUNC13(&out, "Squashed commit of the following:\n");
	while ((commit = FUNC3(&rev)) != NULL) {
		FUNC11(&out, '\n');
		FUNC12(&out, "commit %s\n",
			FUNC5(&commit->object.oid));
		FUNC7(&ctx, commit, &out);
	}
	FUNC15(FUNC4(the_repository), out.buf, out.len);
	FUNC14(&out);
}