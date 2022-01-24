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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  TAB ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/ ** list ; 
 int maxlength ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int termwidth ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int chcnt, col, cnt, endcol, numcols;
	wchar_t **lp;

	numcols = termwidth / maxlength;
	endcol = maxlength;
	for (chcnt = col = 0, lp = list;; ++lp) {
		FUNC3(L"%ls", *lp);
		chcnt += FUNC2(*lp);
		if (!--entries)
			break;
		if (++col == numcols) {
			chcnt = col = 0;
			endcol = maxlength;
			FUNC0('\n');
		} else {
			while ((cnt = FUNC1(chcnt + 1, TAB)) <= endcol) {
				(void)FUNC0('\t');
				chcnt = cnt;
			}
			endcol += maxlength;
		}
	}
	if (chcnt)
		FUNC0('\n');
}