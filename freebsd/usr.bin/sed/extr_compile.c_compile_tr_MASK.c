#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_char ;
struct s_tr {int nmultis; char* bytetab; TYPE_1__* multis; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs2 ;
typedef  int /*<<< orphan*/  mbs1 ;
struct TYPE_3__ {size_t fromlen; size_t tolen; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EILSEQ ; 
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  MB_LEN_MAX ; 
 int UCHAR_MAX ; 
 scalar_t__ WEOF ; 
 int /*<<< orphan*/  _POSIX2_LINE_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fname ; 
 int /*<<< orphan*/  linenum ; 
 struct s_tr* FUNC6 (int) ; 
 size_t FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int) ; 

__attribute__((used)) static char *
FUNC12(char *p, struct s_tr **py)
{
	struct s_tr *y;
	int i;
	const char *op, *np;
	char old[_POSIX2_LINE_MAX + 1];
	char new[_POSIX2_LINE_MAX + 1];
	size_t oclen, oldlen, nclen, newlen;
	mbstate_t mbs1, mbs2;

	if ((*py = y = FUNC6(sizeof(*y))) == NULL)
		FUNC3(1, NULL);
	y->multis = NULL;
	y->nmultis = 0;

	if (*p == '\0' || *p == '\\')
		FUNC5(1,
	"%lu: %s: transform pattern can not be delimited by newline or backslash",
			linenum, fname);
	p = FUNC2(p, old, 1);
	if (p == NULL)
		FUNC5(1, "%lu: %s: unterminated transform source string",
				linenum, fname);
	p = FUNC2(p - 1, new, 1);
	if (p == NULL)
		FUNC5(1, "%lu: %s: unterminated transform target string",
				linenum, fname);
	FUNC0();
	op = old;
	oldlen = FUNC8(NULL, &op, 0, NULL);
	if (oldlen == (size_t)-1)
		FUNC3(1, NULL);
	np = new;
	newlen = FUNC8(NULL, &np, 0, NULL);
	if (newlen == (size_t)-1)
		FUNC3(1, NULL);
	if (newlen != oldlen)
		FUNC5(1, "%lu: %s: transform strings are not the same length",
				linenum, fname);
	if (MB_CUR_MAX == 1) {
		/*
		 * The single-byte encoding case is easy: generate a
		 * lookup table.
		 */
		for (i = 0; i <= UCHAR_MAX; i++)
			y->bytetab[i] = (char)i;
		for (; *op; op++, np++)
			y->bytetab[(u_char)*op] = *np;
	} else {
		/*
		 * Multi-byte encoding case: generate a lookup table as
		 * above, but only for single-byte characters. The first
		 * bytes of multi-byte characters have their lookup table
		 * entries set to 0, which causes do_tr() to search through
		 * an auxiliary vector of multi-byte mappings.
		 */
		FUNC10(&mbs1, 0, sizeof(mbs1));
		FUNC10(&mbs2, 0, sizeof(mbs2));
		for (i = 0; i <= UCHAR_MAX; i++)
			y->bytetab[i] = (FUNC1(i) != WEOF) ? i : 0;
		while (*op != '\0') {
			oclen = FUNC7(op, MB_LEN_MAX, &mbs1);
			if (oclen == (size_t)-1 || oclen == (size_t)-2)
				FUNC4(1, EILSEQ, NULL);
			nclen = FUNC7(np, MB_LEN_MAX, &mbs2);
			if (nclen == (size_t)-1 || nclen == (size_t)-2)
				FUNC4(1, EILSEQ, NULL);
			if (oclen == 1 && nclen == 1)
				y->bytetab[(u_char)*op] = *np;
			else {
				y->bytetab[(u_char)*op] = 0;
				y->multis = FUNC11(y->multis,
				    (y->nmultis + 1) * sizeof(*y->multis));
				if (y->multis == NULL)
					FUNC3(1, NULL);
				i = y->nmultis++;
				y->multis[i].fromlen = oclen;
				FUNC9(y->multis[i].from, op, oclen);
				y->multis[i].tolen = nclen;
				FUNC9(y->multis[i].to, np, nclen);
			}
			op += oclen;
			np += nclen;
		}
	}
	return (p);
}