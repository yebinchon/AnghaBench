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
struct rev_info {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct blame_scoreboard {int no_whole_file_rename; struct repository* repo; int /*<<< orphan*/  reverse; int /*<<< orphan*/  copy_score; int /*<<< orphan*/  move_score; int /*<<< orphan*/  ignore_list; int /*<<< orphan*/  num_commits; struct rev_info* revs; } ;
struct blame_origin {struct blame_entry* suspects; struct blame_origin* previous; int /*<<< orphan*/  blob_oid; struct commit* commit; } ;
struct blame_entry {struct blame_entry* next; } ;
typedef  int /*<<< orphan*/  sg_buf ;

/* Variables and functions */
 int FUNC0 (struct blame_origin**) ; 
 int MAXSG ; 
 int PICKAXE_BLAME_COPY ; 
 int PICKAXE_BLAME_MOVE ; 
 struct blame_entry* FUNC1 (struct blame_entry*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC3 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC4 (struct blame_scoreboard*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC6 (struct blame_scoreboard*,struct blame_entry**,struct blame_entry**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct blame_scoreboard*,struct blame_entry***,struct blame_entry**,struct blame_origin*,struct commit*,struct blame_origin*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct blame_scoreboard*,struct blame_entry***,struct blame_entry**,struct blame_origin*,struct blame_origin*) ; 
 struct blame_origin* FUNC9 (struct repository*,struct commit*,struct blame_origin*) ; 
 struct blame_origin* FUNC10 (struct repository*,struct commit*,struct blame_origin*) ; 
 struct commit_list* FUNC11 (struct rev_info*,struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct blame_origin**) ; 
 int /*<<< orphan*/  FUNC13 (struct blame_origin**,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct rev_info*,struct commit*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct commit*) ; 
 int /*<<< orphan*/  FUNC18 (struct blame_scoreboard*,struct blame_origin*,struct blame_origin*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct blame_scoreboard*,struct blame_origin*,struct blame_origin*) ; 
 struct blame_origin** FUNC20 (int,int) ; 

__attribute__((used)) static void FUNC21(struct blame_scoreboard *sb, struct blame_origin *origin, int opt)
{
	struct rev_info *revs = sb->revs;
	int i, pass, num_sg;
	struct commit *commit = origin->commit;
	struct commit_list *sg;
	struct blame_origin *sg_buf[MAXSG];
	struct blame_origin *porigin, **sg_origin = sg_buf;
	struct blame_entry *toosmall = NULL;
	struct blame_entry *blames, **blametail = &blames;

	num_sg = FUNC14(revs, commit, sb->reverse);
	if (!num_sg)
		goto finish;
	else if (num_sg < FUNC0(sg_buf))
		FUNC13(sg_buf, 0, sizeof(sg_buf));
	else
		sg_origin = FUNC20(num_sg, sizeof(*sg_origin));

	/*
	 * The first pass looks for unrenamed path to optimize for
	 * common cases, then we look for renames in the second pass.
	 */
	for (pass = 0; pass < 2 - sb->no_whole_file_rename; pass++) {
		struct blame_origin *(*find)(struct repository *, struct commit *, struct blame_origin *);
		find = pass ? find_rename : find_origin;

		for (i = 0, sg = FUNC11(revs, commit, sb->reverse);
		     i < num_sg && sg;
		     sg = sg->next, i++) {
			struct commit *p = sg->item;
			int j, same;

			if (sg_origin[i])
				continue;
			if (FUNC17(p))
				continue;
			porigin = find(sb->repo, p, origin);
			if (!porigin)
				continue;
			if (FUNC15(&porigin->blob_oid, &origin->blob_oid)) {
				FUNC19(sb, origin, porigin);
				FUNC2(porigin);
				goto finish;
			}
			for (j = same = 0; j < i; j++)
				if (sg_origin[j] &&
				    FUNC15(&sg_origin[j]->blob_oid, &porigin->blob_oid)) {
					same = 1;
					break;
				}
			if (!same)
				sg_origin[i] = porigin;
			else
				FUNC2(porigin);
		}
	}

	sb->num_commits++;
	for (i = 0, sg = FUNC11(revs, commit, sb->reverse);
	     i < num_sg && sg;
	     sg = sg->next, i++) {
		struct blame_origin *porigin = sg_origin[i];
		if (!porigin)
			continue;
		if (!origin->previous) {
			FUNC3(porigin);
			origin->previous = porigin;
		}
		FUNC18(sb, origin, porigin, 0);
		if (!origin->suspects)
			goto finish;
	}

	/*
	 * Pass remaining suspects for ignored commits to their parents.
	 */
	if (FUNC16(&sb->ignore_list, &commit->object.oid)) {
		for (i = 0, sg = FUNC11(revs, commit, sb->reverse);
		     i < num_sg && sg;
		     sg = sg->next, i++) {
			struct blame_origin *porigin = sg_origin[i];

			if (!porigin)
				continue;
			FUNC18(sb, origin, porigin, 1);
			/*
			 * Preemptively drop porigin so we can refresh the
			 * fingerprints if we use the parent again, which can
			 * occur if you ignore back-to-back commits.
			 */
			FUNC5(porigin);
			if (!origin->suspects)
				goto finish;
		}
	}

	/*
	 * Optionally find moves in parents' files.
	 */
	if (opt & PICKAXE_BLAME_MOVE) {
		FUNC6(sb, &toosmall, &origin->suspects, sb->move_score);
		if (origin->suspects) {
			for (i = 0, sg = FUNC11(revs, commit, sb->reverse);
			     i < num_sg && sg;
			     sg = sg->next, i++) {
				struct blame_origin *porigin = sg_origin[i];
				if (!porigin)
					continue;
				FUNC8(sb, &blametail, &toosmall, origin, porigin);
				if (!origin->suspects)
					break;
			}
		}
	}

	/*
	 * Optionally find copies from parents' files.
	 */
	if (opt & PICKAXE_BLAME_COPY) {
		if (sb->copy_score > sb->move_score)
			FUNC6(sb, &toosmall, &origin->suspects, sb->copy_score);
		else if (sb->copy_score < sb->move_score) {
			origin->suspects = FUNC1(origin->suspects, toosmall);
			toosmall = NULL;
			FUNC6(sb, &toosmall, &origin->suspects, sb->copy_score);
		}
		if (!origin->suspects)
			goto finish;

		for (i = 0, sg = FUNC11(revs, commit, sb->reverse);
		     i < num_sg && sg;
		     sg = sg->next, i++) {
			struct blame_origin *porigin = sg_origin[i];
			FUNC7(sb, &blametail, &toosmall,
					    origin, sg->item, porigin, opt);
			if (!origin->suspects)
				goto finish;
		}
	}

finish:
	*blametail = NULL;
	FUNC4(sb, blames);
	/*
	 * prepend toosmall to origin->suspects
	 *
	 * There is no point in sorting: this ends up on a big
	 * unsorted list in the caller anyway.
	 */
	if (toosmall) {
		struct blame_entry **tail = &toosmall;
		while (*tail)
			tail = &(*tail)->next;
		*tail = origin->suspects;
		origin->suspects = toosmall;
	}
	for (i = 0; i < num_sg; i++) {
		if (sg_origin[i]) {
			if (!sg_origin[i]->suspects)
				FUNC5(sg_origin[i]);
			FUNC2(sg_origin[i]);
		}
	}
	FUNC5(origin);
	if (sg_buf != sg_origin)
		FUNC12(sg_origin);
}