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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ D_CONTEXT ; 
 scalar_t__ D_EDIT ; 
 int D_EXPANDTABS ; 
 scalar_t__ D_GFORMAT ; 
 scalar_t__ D_IFDEF ; 
 scalar_t__ D_NORMAL ; 
 scalar_t__ D_NREVERSE ; 
 scalar_t__ D_REVERSE ; 
 scalar_t__ D_UNIFIED ; 
 int EOF ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ Tflag ; 
 scalar_t__ diff_format ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int ifdefname ; 
 int inifdef ; 
 int tabsize ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(long *f, int a, int b, FILE *lb, int ch, int oldfile, int flags)
{
	int i, j, c, lastc, col, nc;
	int	newcol;

	/*
	 * When doing #ifdef's, copy down to current line
	 * if this is the first file, so that stuff makes it to output.
	 */
	if ((diff_format == D_IFDEF) && oldfile) {
		long curpos = FUNC2(lb);
		/* print through if append (a>b), else to (nb: 0 vs 1 orig) */
		nc = f[a > b ? b : a - 1] - curpos;
		for (i = 0; i < nc; i++)
			FUNC0("%c", FUNC3(lb));
	}
	if (a > b)
		return (0);
	if (diff_format == D_IFDEF) {
		if (inifdef) {
			FUNC0("#else /* %s%s */\n",
			    oldfile == 1 ? "!" : "", ifdefname);
		} else {
			if (oldfile)
				FUNC0("#ifndef %s\n", ifdefname);
			else
				FUNC0("#ifdef %s\n", ifdefname);
		}
		inifdef = 1 + oldfile;
	}
	for (i = a; i <= b; i++) {
		FUNC1(lb, f[i - 1], SEEK_SET);
		nc = f[i] - f[i - 1];
		if ((diff_format != D_IFDEF && diff_format != D_GFORMAT) &&
		    ch != '\0') {
			FUNC0("%c", ch);
			if (Tflag && (diff_format == D_NORMAL || diff_format == D_CONTEXT
			    || diff_format == D_UNIFIED))
				FUNC0("\t");
			else if (diff_format != D_UNIFIED)
				FUNC0(" ");
		}
		col = 0;
		for (j = 0, lastc = '\0'; j < nc; j++, lastc = c) {
			if ((c = FUNC3(lb)) == EOF) {
				if (diff_format == D_EDIT || diff_format == D_REVERSE ||
				    diff_format == D_NREVERSE)
					FUNC4("No newline at end of file");
				else
					FUNC0("\n\\ No newline at end of "
					    "file\n");
				return (0);
			}
			if (c == '\t' && (flags & D_EXPANDTABS)) {
				newcol = ((col/tabsize)+1)*tabsize;
				do {
					FUNC0(" ");
				} while (++col < newcol);
			} else {
				if (diff_format == D_EDIT && j == 1 && c == '\n'
				    && lastc == '.') {
					/*
					 * Don't print a bare "." line
					 * since that will confuse ed(1).
					 * Print ".." instead and return,
					 * giving the caller an offset
					 * from which to restart.
					 */
					FUNC0(".\n");
					return (i - a + 1);
				}
				FUNC0("%c", c);
				col++;
			}
		}
	}
	return (0);
}