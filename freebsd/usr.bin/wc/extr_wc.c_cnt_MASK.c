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
typedef  int wchar_t ;
typedef  scalar_t__ uintmax_t ;
typedef  char u_char ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int MAXBSIZE ; 
 int MB_CUR_MAX ; 
 int STDIN_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ dochar ; 
 scalar_t__ doline ; 
 scalar_t__ dolongline ; 
 scalar_t__ domulti ; 
 scalar_t__ doword ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  fa ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int) ; 
 size_t FUNC5 (int*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ siginfo ; 
 int /*<<< orphan*/  tcharct ; 
 int /*<<< orphan*/  tlinect ; 
 scalar_t__ tlongline ; 
 int /*<<< orphan*/  twordct ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static int
FUNC11(const char *file)
{
	struct stat sb;
	uintmax_t linect, wordct, charct, llct, tmpll;
	int fd, len, warned;
	size_t clen;
	short gotsp;
	u_char *p;
	u_char buf[MAXBSIZE];
	wchar_t wch;
	mbstate_t mbs;

	linect = wordct = charct = llct = tmpll = 0;
	if (file == NULL)
		fd = STDIN_FILENO;
	else if ((fd = FUNC2(fa, file)) < 0) {
		FUNC10("%s: open", file);
		return (1);
	}
	if (doword || (domulti && MB_CUR_MAX != 1))
		goto word;
	/*
	 * If all we need is the number of characters and it's a regular file,
	 * just stat it.
	 */
	if (doline == 0 && dolongline == 0) {
		if (FUNC3(fd, &sb)) {
			FUNC10("%s: fstat", file);
			(void)FUNC1(fd);
			return (1);
		}
		if (FUNC0(sb.st_mode)) {
			FUNC8();
			charct = sb.st_size;
			FUNC9(file, linect, wordct, charct, llct);
			tcharct += charct;
			(void)FUNC1(fd);
			return (0);
		}
	}
	/*
	 * For files we can't stat, or if we need line counting, slurp the
	 * file.  Line counting is split out because it's a lot faster to get
	 * lines than to get words, since the word count requires locale
	 * handling.
	 */
	while ((len = FUNC7(fd, buf, MAXBSIZE))) {
		if (len == -1) {
			FUNC10("%s: read", file);
			(void)FUNC1(fd);
			return (1);
		}
		if (siginfo)
			FUNC9(file, linect, wordct, charct, llct);
		charct += len;
		if (doline || dolongline) {
			for (p = buf; len--; ++p)
				if (*p == '\n') {
					if (tmpll > llct)
						llct = tmpll;
					tmpll = 0;
					++linect;
				} else
					tmpll++;
		}
	}
	FUNC8();
	if (doline)
		tlinect += linect;
	if (dochar)
		tcharct += charct;
	if (dolongline && llct > tlongline)
		tlongline = llct;
	FUNC9(file, linect, wordct, charct, llct);
	(void)FUNC1(fd);
	return (0);

	/* Do it the hard way... */
word:	gotsp = 1;
	warned = 0;
	FUNC6(&mbs, 0, sizeof(mbs));
	while ((len = FUNC7(fd, buf, MAXBSIZE)) != 0) {
		if (len == -1) {
			FUNC10("%s: read", file != NULL ? file : "stdin");
			(void)FUNC1(fd);
			return (1);
		}
		p = buf;
		while (len > 0) {
			if (siginfo)
				FUNC9(file, linect, wordct, charct, llct);
			if (!domulti || MB_CUR_MAX == 1) {
				clen = 1;
				wch = (unsigned char)*p;
			} else if ((clen = FUNC5(&wch, p, len, &mbs)) ==
			    (size_t)-1) {
				if (!warned) {
					errno = EILSEQ;
					FUNC10("%s",
					    file != NULL ? file : "stdin");
					warned = 1;
				}
				FUNC6(&mbs, 0, sizeof(mbs));
				clen = 1;
				wch = (unsigned char)*p;
			} else if (clen == (size_t)-2)
				break;
			else if (clen == 0)
				clen = 1;
			charct++;
			if (wch != L'\n')
				tmpll++;
			len -= clen;
			p += clen;
			if (wch == L'\n') {
				if (tmpll > llct)
					llct = tmpll;
				tmpll = 0;
				++linect;
			}
			if (FUNC4(wch))
				gotsp = 1;
			else if (gotsp) {
				gotsp = 0;
				++wordct;
			}
		}
	}
	FUNC8();
	if (domulti && MB_CUR_MAX > 1)
		if (FUNC5(NULL, NULL, 0, &mbs) == (size_t)-1 && !warned)
			FUNC10("%s", file != NULL ? file : "stdin");
	if (doline)
		tlinect += linect;
	if (doword)
		twordct += wordct;
	if (dochar || domulti)
		tcharct += charct;
	if (dolongline && llct > tlongline)
		tlongline = llct;
	FUNC9(file, linect, wordct, charct, llct);
	(void)FUNC1(fd);
	return (0);
}