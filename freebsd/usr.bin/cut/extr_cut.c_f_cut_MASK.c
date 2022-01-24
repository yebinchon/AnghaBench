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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 scalar_t__ autostop ; 
 char* dcharmb ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 char* FUNC5 (size_t) ; 
 int maxval ; 
 size_t FUNC6 (char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 char* positions ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  sflag ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ wflag ; 

__attribute__((used)) static int
FUNC10(FILE *fp, const char *fname)
{
	wchar_t ch;
	int field, i, isdelim;
	char *pos, *p;
	int output;
	char *lbuf, *mlbuf;
	size_t clen, lbuflen, reallen;

	mlbuf = NULL;
	while ((lbuf = FUNC1(fp, &lbuflen)) != NULL) {
		reallen = lbuflen;
		/* Assert EOL has a newline. */
		if (*(lbuf + lbuflen - 1) != '\n') {
			/* Can't have > 1 line with no trailing newline. */
			mlbuf = FUNC5(lbuflen + 1);
			if (mlbuf == NULL)
				FUNC0(1, "malloc");
			FUNC7(mlbuf, lbuf, lbuflen);
			*(mlbuf + lbuflen) = '\n';
			lbuf = mlbuf;
			reallen++;
		}
		output = 0;
		for (isdelim = 0, p = lbuf;; p += clen) {
			clen = FUNC6(&ch, p, lbuf + reallen - p, NULL);
			if (clen == (size_t)-1 || clen == (size_t)-2) {
				FUNC9(EILSEQ, "%s", fname);
				FUNC2(mlbuf);
				return (1);
			}
			if (clen == 0)
				clen = 1;
			/* this should work if newline is delimiter */
			if (FUNC4(ch))
				isdelim = 1;
			if (ch == '\n') {
				if (!isdelim && !sflag)
					(void)FUNC3(lbuf, lbuflen, 1, stdout);
				break;
			}
		}
		if (!isdelim)
			continue;

		pos = positions + 1;
		for (field = maxval, p = lbuf; field; --field, ++pos) {
			if (*pos && output++)
				for (i = 0; dcharmb[i] != '\0'; i++)
					FUNC8(dcharmb[i]);
			for (;;) {
				clen = FUNC6(&ch, p, lbuf + reallen - p,
				    NULL);
				if (clen == (size_t)-1 || clen == (size_t)-2) {
					FUNC9(EILSEQ, "%s", fname);
					FUNC2(mlbuf);
					return (1);
				}
				if (clen == 0)
					clen = 1;
				p += clen;
				if (ch == '\n' || FUNC4(ch)) {
					/* compress whitespace */
					if (wflag && ch != '\n')
						while (FUNC4(*p))
							p++;
					break;
				}
				if (*pos)
					for (i = 0; i < (int)clen; i++)
						FUNC8(p[i - clen]);
			}
			if (ch == '\n')
				break;
		}
		if (ch != '\n') {
			if (autostop) {
				if (output)
					for (i = 0; dcharmb[i] != '\0'; i++)
						FUNC8(dcharmb[i]);
				for (; (ch = *p) != '\n'; ++p)
					(void)FUNC8(ch);
			} else
				for (; (ch = *p) != '\n'; ++p);
		}
		(void)FUNC8('\n');
	}
	FUNC2(mlbuf);
	return (0);
}