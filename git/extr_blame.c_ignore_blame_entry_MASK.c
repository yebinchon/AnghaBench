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
struct blame_origin {int dummy; } ;
struct blame_line_tracker {int /*<<< orphan*/  s_lno; scalar_t__ is_parent; } ;
struct blame_entry {int num_lines; int ignored; int unblamable; struct blame_entry* next; int /*<<< orphan*/  s_lno; struct blame_origin* suspect; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct blame_line_tracker*,struct blame_line_tracker*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_origin*) ; 
 struct blame_origin* FUNC3 (struct blame_origin*) ; 
 struct blame_entry* FUNC4 (struct blame_entry*,int,struct blame_origin*) ; 

__attribute__((used)) static void FUNC5(struct blame_entry *e,
			       struct blame_origin *parent,
			       struct blame_entry **diffp,
			       struct blame_entry **ignoredp,
			       struct blame_line_tracker *line_blames)
{
	int entry_len, nr_lines, i;

	/*
	 * We carve new entries off the front of e.  Each entry comes from a
	 * contiguous chunk of lines: adjacent lines from the same origin
	 * (either the parent or the target).
	 */
	entry_len = 1;
	nr_lines = e->num_lines;	/* e changes in the loop */
	for (i = 0; i < nr_lines; i++) {
		struct blame_entry *next = NULL;

		/*
		 * We are often adjacent to the next line - only split the blame
		 * entry when we have to.
		 */
		if (i + 1 < nr_lines) {
			if (FUNC0(&line_blames[i],
					       &line_blames[i + 1])) {
				entry_len++;
				continue;
			}
			next = FUNC4(e, entry_len,
					      FUNC3(e->suspect));
		}
		if (line_blames[i].is_parent) {
			e->ignored = 1;
			FUNC2(e->suspect);
			e->suspect = FUNC3(parent);
			e->s_lno = line_blames[i - entry_len + 1].s_lno;
			e->next = *ignoredp;
			*ignoredp = e;
		} else {
			e->unblamable = 1;
			/* e->s_lno is already in the target's address space. */
			e->next = *diffp;
			*diffp = e;
		}
		FUNC1(e->num_lines == entry_len);
		e = next;
		entry_len = 1;
	}
	FUNC1(!e);
}