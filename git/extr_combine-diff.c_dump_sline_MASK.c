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
struct sline {unsigned long flag; char* bol; int len; struct lline* lost; } ;
struct lline {unsigned long parent_map; char* line; struct lline* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_CONTEXT ; 
 int /*<<< orphan*/  DIFF_FILE_NEW ; 
 int /*<<< orphan*/  DIFF_FILE_OLD ; 
 int /*<<< orphan*/  DIFF_FRAGINFO ; 
 int /*<<< orphan*/  DIFF_FUNCINFO ; 
 int /*<<< orphan*/  DIFF_RESET ; 
 char combine_marker ; 
 int /*<<< orphan*/  context ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sline*,unsigned long,unsigned long,int,unsigned long) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC8(struct sline *sline, const char *line_prefix,
		       unsigned long cnt, int num_parent,
		       int use_color, int result_deleted)
{
	unsigned long mark = (1UL<<num_parent);
	unsigned long no_pre_delete = (2UL<<num_parent);
	int i;
	unsigned long lno = 0;
	const char *c_frag = FUNC0(use_color, DIFF_FRAGINFO);
	const char *c_func = FUNC0(use_color, DIFF_FUNCINFO);
	const char *c_new = FUNC0(use_color, DIFF_FILE_NEW);
	const char *c_old = FUNC0(use_color, DIFF_FILE_OLD);
	const char *c_context = FUNC0(use_color, DIFF_CONTEXT);
	const char *c_reset = FUNC0(use_color, DIFF_RESET);

	if (result_deleted)
		return; /* result deleted */

	while (1) {
		unsigned long hunk_end;
		unsigned long rlines;
		const char *hunk_comment = NULL;
		unsigned long null_context = 0;

		while (lno <= cnt && !(sline[lno].flag & mark)) {
			if (FUNC2(sline[lno].bol))
				hunk_comment = sline[lno].bol;
			lno++;
		}
		if (cnt < lno)
			break;
		else {
			for (hunk_end = lno + 1; hunk_end <= cnt; hunk_end++)
				if (!(sline[hunk_end].flag & mark))
					break;
		}
		rlines = hunk_end - lno;
		if (cnt < hunk_end)
			rlines--; /* pointing at the last delete hunk */

		if (!context) {
			/*
			 * Even when running with --unified=0, all
			 * lines in the hunk needs to be processed in
			 * the loop below in order to show the
			 * deletion recorded in lost_head.  However,
			 * we do not want to show the resulting line
			 * with all blank context markers in such a
			 * case.  Compensate.
			 */
			unsigned long j;
			for (j = lno; j < hunk_end; j++)
				if (!(sline[j].flag & (mark-1)))
					null_context++;
			rlines -= null_context;
		}

		FUNC4("%s%s", line_prefix, c_frag);
		for (i = 0; i <= num_parent; i++) FUNC5(combine_marker);
		for (i = 0; i < num_parent; i++)
			FUNC7(sline, lno, hunk_end, i, null_context);
		FUNC4(" +%lu,%lu ", lno+1, rlines);
		for (i = 0; i <= num_parent; i++) FUNC5(combine_marker);

		if (hunk_comment) {
			int comment_end = 0;
			for (i = 0; i < 40; i++) {
				int ch = hunk_comment[i] & 0xff;
				if (!ch || ch == '\n')
					break;
				if (!FUNC3(ch))
				    comment_end = i;
			}
			if (comment_end)
				FUNC4("%s%s %s%s", c_reset,
						    c_context, c_reset,
						    c_func);
			for (i = 0; i < comment_end; i++)
				FUNC5(hunk_comment[i]);
		}

		FUNC4("%s\n", c_reset);
		while (lno < hunk_end) {
			struct lline *ll;
			int j;
			unsigned long p_mask;
			struct sline *sl = &sline[lno++];
			ll = (sl->flag & no_pre_delete) ? NULL : sl->lost;
			while (ll) {
				FUNC4("%s%s", line_prefix, c_old);
				for (j = 0; j < num_parent; j++) {
					if (ll->parent_map & (1UL<<j))
						FUNC5('-');
					else
						FUNC5(' ');
				}
				FUNC6(ll->line, -1, c_reset);
				ll = ll->next;
			}
			if (cnt < lno)
				break;
			p_mask = 1;
			FUNC1(line_prefix, stdout);
			if (!(sl->flag & (mark-1))) {
				/*
				 * This sline was here to hang the
				 * lost lines in front of it.
				 */
				if (!context)
					continue;
				FUNC1(c_context, stdout);
			}
			else
				FUNC1(c_new, stdout);
			for (j = 0; j < num_parent; j++) {
				if (p_mask & sl->flag)
					FUNC5('+');
				else
					FUNC5(' ');
				p_mask <<= 1;
			}
			FUNC6(sl->bol, sl->len, c_reset);
		}
	}
}