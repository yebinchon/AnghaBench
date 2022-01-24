#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_14__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
struct commit_list {struct commit* item; } ;
struct TYPE_20__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_16__ object; TYPE_2__* parents; } ;
struct TYPE_21__ {int /*<<< orphan*/  compare; } ;
struct blame_scoreboard {int /*<<< orphan*/  num_read_blob; scalar_t__ final_buf; int /*<<< orphan*/  final_buf_size; int /*<<< orphan*/  repo; TYPE_5__* revs; TYPE_6__* final; scalar_t__ reverse; scalar_t__ contents_from; TYPE_1__ commits; } ;
struct TYPE_23__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
struct blame_origin {int /*<<< orphan*/  blob_oid; int /*<<< orphan*/  mode; TYPE_3__ file; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_18__ {int /*<<< orphan*/  oid; } ;
struct TYPE_26__ {TYPE_14__ object; } ;
struct TYPE_24__ {scalar_t__ allow_textconv; } ;
struct TYPE_17__ {TYPE_4__ flags; } ;
struct TYPE_19__ {char* name; } ;
struct TYPE_25__ {TYPE_12__ diffopt; TYPE_15__ children; scalar_t__ first_parent_only; } ;
struct TYPE_22__ {struct commit* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_15__*,TYPE_16__*,struct commit_list*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_14__*,char*) ; 
 int /*<<< orphan*/  blame_suspects ; 
 int /*<<< orphan*/  compare_commits_by_commit_date ; 
 int /*<<< orphan*/  compare_commits_by_reverse_commit_date ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ,TYPE_12__*,char const*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct blame_origin*) ; 
 void* FUNC7 (TYPE_5__*,char const**) ; 
 TYPE_6__* FUNC8 (TYPE_5__*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct blame_origin* FUNC10 (TYPE_6__*) ; 
 struct blame_origin* FUNC11 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 char const* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct blame_scoreboard*) ; 
 scalar_t__ FUNC17 (TYPE_5__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ *) ; 
 struct commit_list* FUNC21 (int,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC23(struct blame_scoreboard *sb,
		      const char *path,
		      struct blame_origin **orig)
{
	const char *final_commit_name = NULL;
	struct blame_origin *o;
	struct commit *final_commit = NULL;
	enum object_type type;

	FUNC12(&blame_suspects);

	if (sb->reverse && sb->contents_from)
		FUNC4(FUNC1("--contents and --reverse do not blend well."));

	if (!sb->repo)
		FUNC0("repo is NULL");

	if (!sb->reverse) {
		sb->final = FUNC7(sb->revs, &final_commit_name);
		sb->commits.compare = compare_commits_by_commit_date;
	} else {
		sb->final = FUNC8(sb->revs, &final_commit_name);
		sb->commits.compare = compare_commits_by_reverse_commit_date;
	}

	if (sb->final && sb->contents_from)
		FUNC4(FUNC1("cannot use --contents with final commit object name"));

	if (sb->reverse && sb->revs->first_parent_only)
		sb->revs->children.name = NULL;

	if (!sb->final) {
		/*
		 * "--not A B -- path" without anything positive;
		 * do not default to HEAD, but use the working tree
		 * or "--contents".
		 */
		FUNC19();
		sb->final = FUNC5(sb->repo,
						     &sb->revs->diffopt,
						     path, sb->contents_from);
		FUNC3(sb->revs, &(sb->final->object), ":");
	}

	if (sb->reverse && sb->revs->first_parent_only) {
		final_commit = FUNC7(sb->revs, NULL);
		if (!final_commit)
			FUNC4(FUNC1("--reverse and --first-parent together require specified latest commit"));
	}

	/*
	 * If we have bottom, this will mark the ancestors of the
	 * bottom commits we would reach while traversing as
	 * uninteresting.
	 */
	if (FUNC17(sb->revs))
		FUNC4(FUNC1("revision walk setup failed"));

	if (sb->reverse && sb->revs->first_parent_only) {
		struct commit *c = final_commit;

		sb->revs->children.name = "children";
		while (c->parents &&
		       !FUNC15(&c->object.oid, &sb->final->object.oid)) {
			struct commit_list *l = FUNC21(1, sizeof(*l));

			l->item = c;
			if (FUNC2(&sb->revs->children,
					   &c->parents->item->object, l))
				FUNC0("not unique item in first-parent chain");
			c = c->parents->item;
		}

		if (!FUNC15(&c->object.oid, &sb->final->object.oid))
			FUNC4(FUNC1("--reverse --first-parent together require range along first-parent chain"));
	}

	if (FUNC13(&sb->final->object.oid)) {
		o = FUNC10(sb->final);
		sb->final_buf = FUNC22(o->file.ptr, o->file.size);
		sb->final_buf_size = o->file.size;
	}
	else {
		o = FUNC11(sb->final, path);
		if (FUNC6(sb->repo, o))
			FUNC4(FUNC1("no such path %s in %s"), path, final_commit_name);

		if (sb->revs->diffopt.flags.allow_textconv &&
		    FUNC20(sb->repo, path, o->mode, &o->blob_oid, 1, (char **) &sb->final_buf,
				    &sb->final_buf_size))
			;
		else
			sb->final_buf = FUNC18(&o->blob_oid, &type,
							 &sb->final_buf_size);

		if (!sb->final_buf)
			FUNC4(FUNC1("cannot read blob %s for path %s"),
			    FUNC14(&o->blob_oid),
			    path);
	}
	sb->num_read_blob++;
	FUNC16(sb);

	if (orig)
		*orig = o;

	FUNC9((char *)final_commit_name);
}