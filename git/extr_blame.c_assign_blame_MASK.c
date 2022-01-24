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
struct rev_info {int max_age; } ;
struct TYPE_2__ {int flags; scalar_t__ parsed; } ;
struct commit {int date; TYPE_1__ object; int /*<<< orphan*/  parents; } ;
struct blame_scoreboard {scalar_t__ debug; struct blame_entry* ent; int /*<<< orphan*/  found_guilty_entry_data; int /*<<< orphan*/  (* found_guilty_entry ) (struct blame_entry*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  show_root; scalar_t__ reverse; int /*<<< orphan*/  commits; struct rev_info* revs; } ;
struct blame_origin {int guilty; struct blame_entry* suspects; struct commit* commit; struct blame_origin* next; } ;
struct blame_entry {struct blame_entry* next; } ;

/* Variables and functions */
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_origin*) ; 
 struct blame_origin* FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (struct blame_scoreboard*,struct blame_origin*,int) ; 
 struct commit* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct blame_scoreboard*) ; 
 int /*<<< orphan*/  FUNC9 (struct blame_entry*,int /*<<< orphan*/ ) ; 

void FUNC10(struct blame_scoreboard *sb, int opt)
{
	struct rev_info *revs = sb->revs;
	struct commit *commit = FUNC7(&sb->commits);

	while (commit) {
		struct blame_entry *ent;
		struct blame_origin *suspect = FUNC3(commit);

		/* find one suspect to break down */
		while (suspect && !suspect->suspects)
			suspect = suspect->next;

		if (!suspect) {
			commit = FUNC7(&sb->commits);
			continue;
		}

		FUNC0(commit == suspect->commit);

		/*
		 * We will use this suspect later in the loop,
		 * so hold onto it in the meantime.
		 */
		FUNC2(suspect);
		FUNC5(commit);
		if (sb->reverse ||
		    (!(commit->object.flags & UNINTERESTING) &&
		     !(revs->max_age != -1 && commit->date < revs->max_age)))
			FUNC6(sb, suspect, opt);
		else {
			commit->object.flags |= UNINTERESTING;
			if (commit->object.parsed)
				FUNC4(commit);
		}
		/* treat root commit as boundary */
		if (!commit->parents && !sb->show_root)
			commit->object.flags |= UNINTERESTING;

		/* Take responsibility for the remaining entries */
		ent = suspect->suspects;
		if (ent) {
			suspect->guilty = 1;
			for (;;) {
				struct blame_entry *next = ent->next;
				if (sb->found_guilty_entry)
					sb->found_guilty_entry(ent, sb->found_guilty_entry_data);
				if (next) {
					ent = next;
					continue;
				}
				ent->next = sb->ent;
				sb->ent = suspect->suspects;
				suspect->suspects = NULL;
				break;
			}
		}
		FUNC1(suspect);

		if (sb->debug) /* sanity */
			FUNC8(sb);
	}
}