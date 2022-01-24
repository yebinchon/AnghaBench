#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int recursive; int find_copies_harder; } ;
struct diff_options {int /*<<< orphan*/  pathspec; TYPE_2__ flags; int /*<<< orphan*/  output_format; } ;
struct diff_filepair {TYPE_8__* one; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct blame_scoreboard {scalar_t__ copy_score; int /*<<< orphan*/  num_read_blob; TYPE_3__* revs; int /*<<< orphan*/  repo; } ;
struct blame_origin {struct blame_entry* suspects; int /*<<< orphan*/  mode; int /*<<< orphan*/  blob_oid; int /*<<< orphan*/  path; struct commit* commit; } ;
struct blame_list {struct blame_entry* ent; struct blame_entry* split; } ;
struct blame_entry {struct blame_entry* next; scalar_t__ suspect; } ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ mmfile_t ;
struct TYPE_14__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  path; } ;
struct TYPE_13__ {int nr; struct diff_filepair** queue; } ;
struct TYPE_11__ {int /*<<< orphan*/  diffopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  DIFF_FORMAT_NO_OUTPUT ; 
 int PICKAXE_BLAME_COPY_HARDER ; 
 int PICKAXE_BLAME_COPY_HARDEST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct blame_scoreboard*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct blame_scoreboard*,struct blame_entry*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct diff_options*) ; 
 TYPE_7__ diff_queued_diff ; 
 int /*<<< orphan*/  FUNC8 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC10 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct blame_origin*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct blame_entry** FUNC13 (struct blame_scoreboard*,struct blame_entry**,struct blame_entry**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct blame_scoreboard*,struct blame_entry*,struct blame_origin*,struct blame_entry*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct blame_list*) ; 
 int /*<<< orphan*/  FUNC16 (struct commit*) ; 
 struct blame_origin* FUNC17 (struct commit*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct diff_options*) ; 
 struct blame_entry* FUNC21 (struct blame_entry*,int /*<<< orphan*/ *) ; 
 struct blame_list* FUNC22 (struct blame_entry*,int*) ; 
 int /*<<< orphan*/  FUNC23 (struct blame_entry***,struct blame_entry***,struct blame_entry*,struct blame_entry*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(struct blame_scoreboard *sb,
				struct blame_entry ***blamed,
				struct blame_entry **toosmall,
				struct blame_origin *target,
				struct commit *parent,
				struct blame_origin *porigin,
				int opt)
{
	struct diff_options diff_opts;
	int i, j;
	struct blame_list *blame_list;
	int num_ents;
	struct blame_entry *unblamed = target->suspects;
	struct blame_entry *leftover = NULL;

	if (!unblamed)
		return; /* nothing remains for this target */

	FUNC20(sb->repo, &diff_opts);
	diff_opts.flags.recursive = 1;
	diff_opts.output_format = DIFF_FORMAT_NO_OUTPUT;

	FUNC8(&diff_opts);

	/* Try "find copies harder" on new path if requested;
	 * we do not want to use diffcore_rename() actually to
	 * match things up; find_copies_harder is set only to
	 * force diff_tree_oid() to feed all filepairs to diff_queue,
	 * and this code needs to be after diff_setup_done(), which
	 * usually makes find-copies-harder imply copy detection.
	 */
	if ((opt & PICKAXE_BLAME_COPY_HARDEST)
	    || ((opt & PICKAXE_BLAME_COPY_HARDER)
		&& (!porigin || FUNC24(target->path, porigin->path))))
		diff_opts.flags.find_copies_harder = 1;

	if (FUNC18(&target->commit->object.oid))
		FUNC11(FUNC16(parent), &diff_opts);
	else
		FUNC9(FUNC16(parent),
			      FUNC16(target->commit),
			      "", &diff_opts);

	if (!diff_opts.flags.find_copies_harder)
		FUNC10(&diff_opts);

	do {
		struct blame_entry **unblamedtail = &unblamed;
		blame_list = FUNC22(unblamed, &num_ents);

		for (i = 0; i < diff_queued_diff.nr; i++) {
			struct diff_filepair *p = diff_queued_diff.queue[i];
			struct blame_origin *norigin;
			mmfile_t file_p;
			struct blame_entry potential[3];

			if (!FUNC0(p->one))
				continue; /* does not exist in parent */
			if (FUNC1(p->one->mode))
				continue; /* ignore git links */
			if (porigin && !FUNC24(p->one->path, porigin->path))
				/* find_move already dealt with this path */
				continue;

			norigin = FUNC17(parent, p->one->path);
			FUNC19(&norigin->blob_oid, &p->one->oid);
			norigin->mode = p->one->mode;
			FUNC12(&sb->revs->diffopt, norigin, &file_p,
					 &sb->num_read_blob, 0);
			if (!file_p.ptr)
				continue;

			for (j = 0; j < num_ents; j++) {
				FUNC14(sb, blame_list[j].ent,
						  norigin, potential, &file_p);
				FUNC5(sb, blame_list[j].split,
						     potential);
				FUNC6(potential);
			}
			FUNC3(norigin);
		}

		for (j = 0; j < num_ents; j++) {
			struct blame_entry *split = blame_list[j].split;
			if (split[1].suspect &&
			    sb->copy_score < FUNC2(sb, &split[1])) {
				FUNC23(blamed, &unblamedtail, split,
					    blame_list[j].ent);
			} else {
				blame_list[j].ent->next = leftover;
				leftover = blame_list[j].ent;
			}
			FUNC6(split);
		}
		FUNC15(blame_list);
		*unblamedtail = NULL;
		toosmall = FUNC13(sb, toosmall, &unblamed, sb->copy_score);
	} while (unblamed);
	target->suspects = FUNC21(leftover, NULL);
	FUNC7(&diff_opts);
	FUNC4(&diff_opts.pathspec);
}