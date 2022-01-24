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

/* Variables and functions */
 int /*<<< orphan*/  TAB ; 
 int entries ; 
 int /*<<< orphan*/ * list ; 
 int maxlength ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int termwidth ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int base, chcnt, cnt, col, endcol, numcols, numrows, row;

	numcols = termwidth / maxlength;
	numrows = entries / numcols;
	if (entries % numcols)
		++numrows;

	for (row = 0; row < numrows; ++row) {
		endcol = maxlength;
		for (base = row, chcnt = col = 0; col < numcols; ++col) {
			FUNC3(L"%ls", list[base]);
			chcnt += FUNC2(list[base]);
			if ((base += numrows) >= entries)
				break;
			while ((cnt = FUNC1(chcnt + 1, TAB)) <= endcol) {
				(void)FUNC0('\t');
				chcnt = cnt;
			}
			endcol += maxlength;
		}
		FUNC0('\n');
	}
}