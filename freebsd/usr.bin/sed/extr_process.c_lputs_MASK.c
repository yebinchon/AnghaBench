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
typedef  char wchar_t ;
struct winsize {int ws_col; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int EOF ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,size_t,scalar_t__) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC8 (char) ; 
 size_t FUNC9 (char*,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ outfile ; 
 int /*<<< orphan*/  outfname ; 
 scalar_t__ stdout ; 
 char* FUNC11 (char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (char) ; 
 int FUNC14 (char) ; 

__attribute__((used)) static void
FUNC15(char *s, size_t len)
{
	static const char escapes[] = "\\\a\b\f\r\t\v";
	int c, col, width;
	const char *p;
	struct winsize win;
	static int termwidth = -1;
	size_t clen, i;
	wchar_t wc;
	mbstate_t mbs;

	if (outfile != stdout)
		termwidth = 60;
	if (termwidth == -1) {
		if ((p = FUNC6("COLUMNS")) && *p != '\0')
			termwidth = FUNC0(p);
		else if (FUNC7(STDOUT_FILENO, TIOCGWINSZ, &win) == 0 &&
		    win.ws_col > 0)
			termwidth = win.ws_col;
		else
			termwidth = 60;
	}
	if (termwidth <= 0)
		termwidth = 1;

	FUNC10(&mbs, 0, sizeof(mbs));
	col = 0;
	while (len != 0) {
		clen = FUNC9(&wc, s, len, &mbs);
		if (clen == 0)
			clen = 1;
		if (clen == (size_t)-1 || clen == (size_t)-2) {
			wc = (unsigned char)*s;
			clen = 1;
			FUNC10(&mbs, 0, sizeof(mbs));
		}
		if (wc == '\n') {
			if (col + 1 >= termwidth)
				FUNC3(outfile, "\\\n");
			FUNC4('$', outfile);
			FUNC4('\n', outfile);
			col = 0;
		} else if (FUNC8(wc)) {
			width = FUNC14(wc);
			if (col + width >= termwidth) {
				FUNC3(outfile, "\\\n");
				col = 0;
			}
			FUNC5(s, 1, clen, outfile);
			col += width;
		} else if (wc != L'\0' && (c = FUNC13(wc)) != EOF &&
		    (p = FUNC11(escapes, c)) != NULL) {
			if (col + 2 >= termwidth) {
				FUNC3(outfile, "\\\n");
				col = 0;
			}
			FUNC3(outfile, "\\%c", "\\abfrtv"[p - escapes]);
			col += 2;
		} else {
			if (col + 4 * clen >= (unsigned)termwidth) {
				FUNC3(outfile, "\\\n");
				col = 0;
			}
			for (i = 0; i < clen; i++)
				FUNC3(outfile, "\\%03o",
				    (int)(unsigned char)s[i]);
			col += 4 * clen;
		}
		s += clen;
		len -= clen;
	}
	if (col + 1 >= termwidth)
		FUNC3(outfile, "\\\n");
	(void)FUNC4('$', outfile);
	(void)FUNC4('\n', outfile);
	if (FUNC2(outfile))
		FUNC1(1, "%s: %s", outfname, FUNC12(errno ? errno : EIO));
}