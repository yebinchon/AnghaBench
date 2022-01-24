#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct blame_scoreboard {scalar_t__ debug; struct blame_entry* ent; } ;
struct blame_entry {scalar_t__ suspect; scalar_t__ s_lno; scalar_t__ num_lines; scalar_t__ ignored; scalar_t__ unblamable; scalar_t__ score; struct blame_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_scoreboard*) ; 

void FUNC3(struct blame_scoreboard *sb)
{
	struct blame_entry *ent, *next;

	for (ent = sb->ent; ent && (next = ent->next); ent = next) {
		if (ent->suspect == next->suspect &&
		    ent->s_lno + ent->num_lines == next->s_lno &&
		    ent->ignored == next->ignored &&
		    ent->unblamable == next->unblamable) {
			ent->num_lines += next->num_lines;
			ent->next = next->next;
			FUNC0(next->suspect);
			FUNC1(next);
			ent->score = 0;
			next = ent; /* again */
		}
	}

	if (sb->debug) /* sanity */
		FUNC2(sb);
}