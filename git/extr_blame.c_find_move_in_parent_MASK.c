#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct blame_scoreboard {scalar_t__ move_score; int /*<<< orphan*/  num_read_blob; TYPE_1__* revs; } ;
struct blame_origin {struct blame_entry* suspects; } ;
struct blame_entry {struct blame_entry* next; scalar_t__ suspect; } ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ mmfile_t ;
struct TYPE_5__ {int /*<<< orphan*/  diffopt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct blame_scoreboard*,struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct blame_origin*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct blame_entry** FUNC3 (struct blame_scoreboard*,struct blame_entry**,struct blame_entry**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct blame_scoreboard*,struct blame_entry*,struct blame_origin*,struct blame_entry*,TYPE_2__*) ; 
 struct blame_entry* FUNC5 (struct blame_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct blame_entry***,struct blame_entry***,struct blame_entry*,struct blame_entry*) ; 

__attribute__((used)) static void FUNC7(struct blame_scoreboard *sb,
				struct blame_entry ***blamed,
				struct blame_entry **toosmall,
				struct blame_origin *target,
				struct blame_origin *parent)
{
	struct blame_entry *e, split[3];
	struct blame_entry *unblamed = target->suspects;
	struct blame_entry *leftover = NULL;
	mmfile_t file_p;

	if (!unblamed)
		return; /* nothing remains for this target */

	FUNC2(&sb->revs->diffopt, parent, &file_p,
			 &sb->num_read_blob, 0);
	if (!file_p.ptr)
		return;

	/* At each iteration, unblamed has a NULL-terminated list of
	 * entries that have not yet been tested for blame.  leftover
	 * contains the reversed list of entries that have been tested
	 * without being assignable to the parent.
	 */
	do {
		struct blame_entry **unblamedtail = &unblamed;
		struct blame_entry *next;
		for (e = unblamed; e; e = next) {
			next = e->next;
			FUNC4(sb, e, parent, split, &file_p);
			if (split[1].suspect &&
			    sb->move_score < FUNC0(sb, &split[1])) {
				FUNC6(blamed, &unblamedtail, split, e);
			} else {
				e->next = leftover;
				leftover = e;
			}
			FUNC1(split);
		}
		*unblamedtail = NULL;
		toosmall = FUNC3(sb, toosmall, &unblamed, sb->move_score);
	} while (unblamed);
	target->suspects = FUNC5(leftover, NULL);
}