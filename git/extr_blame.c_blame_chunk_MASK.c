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
struct blame_line_tracker {int dummy; } ;
struct blame_entry {int s_lno; int num_lines; struct blame_entry* next; struct blame_origin* suspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blame_origin*) ; 
 struct blame_origin* FUNC1 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_line_tracker*) ; 
 int /*<<< orphan*/  FUNC3 (struct blame_origin*,struct blame_origin*,int,int,int,int,struct blame_line_tracker*) ; 
 int /*<<< orphan*/  FUNC4 (struct blame_entry*,struct blame_origin*,struct blame_entry**,struct blame_entry**,struct blame_line_tracker*) ; 
 struct blame_entry* FUNC5 (struct blame_entry*,struct blame_entry*) ; 
 struct blame_entry* FUNC6 (struct blame_entry*,int,struct blame_origin*) ; 
 struct blame_line_tracker* FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct blame_entry ***dstq, struct blame_entry ***srcq,
			int tlno, int offset, int same, int parent_len,
			struct blame_origin *parent,
			struct blame_origin *target, int ignore_diffs)
{
	struct blame_entry *e = **srcq;
	struct blame_entry *samep = NULL, *diffp = NULL, *ignoredp = NULL;
	struct blame_line_tracker *line_blames = NULL;

	while (e && e->s_lno < tlno) {
		struct blame_entry *next = e->next;
		/*
		 * current record starts before differing portion.  If
		 * it reaches into it, we need to split it up and
		 * examine the second part separately.
		 */
		if (e->s_lno + e->num_lines > tlno) {
			/* Move second half to a new record */
			struct blame_entry *n;

			n = FUNC6(e, tlno - e->s_lno, e->suspect);
			/* Push new record to diffp */
			n->next = diffp;
			diffp = n;
		} else
			FUNC0(e->suspect);
		/* Pass blame for everything before the differing
		 * chunk to the parent */
		e->suspect = FUNC1(parent);
		e->s_lno += offset;
		e->next = samep;
		samep = e;
		e = next;
	}
	/*
	 * As we don't know how much of a common stretch after this
	 * diff will occur, the currently blamed parts are all that we
	 * can assign to the parent for now.
	 */

	if (samep) {
		**dstq = FUNC5(samep, **dstq);
		*dstq = &samep->next;
	}
	/*
	 * Prepend the split off portions: everything after e starts
	 * after the blameable portion.
	 */
	e = FUNC5(diffp, e);

	/*
	 * Now retain records on the target while parts are different
	 * from the parent.
	 */
	samep = NULL;
	diffp = NULL;

	if (ignore_diffs && same - tlno > 0) {
		line_blames = FUNC7(sizeof(struct blame_line_tracker),
				      same - tlno);
		FUNC3(parent, target, tlno, offset, same,
				  parent_len, line_blames);
	}

	while (e && e->s_lno < same) {
		struct blame_entry *next = e->next;

		/*
		 * If current record extends into sameness, need to split.
		 */
		if (e->s_lno + e->num_lines > same) {
			/*
			 * Move second half to a new record to be
			 * processed by later chunks
			 */
			struct blame_entry *n;

			n = FUNC6(e, same - e->s_lno,
					   FUNC1(e->suspect));
			/* Push new record to samep */
			n->next = samep;
			samep = n;
		}
		if (ignore_diffs) {
			FUNC4(e, parent, &diffp, &ignoredp,
					   line_blames + e->s_lno - tlno);
		} else {
			e->next = diffp;
			diffp = e;
		}
		e = next;
	}
	FUNC2(line_blames);
	if (ignoredp) {
		/*
		 * Note ignoredp is not sorted yet, and thus neither is dstq.
		 * That list must be sorted before we queue_blames().  We defer
		 * sorting until after all diff hunks are processed, so that
		 * guess_line_blames() can pick *any* line in the parent.  The
		 * slight drawback is that we end up sorting all blame entries
		 * passed to the parent, including those that are unrelated to
		 * changes made by the ignored commit.
		 */
		**dstq = FUNC5(ignoredp, **dstq);
		*dstq = &ignoredp->next;
	}
	**srcq = FUNC5(diffp, FUNC5(samep, e));
	/* Move across elements that are in the unblamable portion */
	if (diffp)
		*srcq = &diffp->next;
}