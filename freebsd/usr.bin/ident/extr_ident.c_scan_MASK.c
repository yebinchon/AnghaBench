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
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int analyzer_states ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DELIM_SEEN 133 
 int EOF ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
#define  INIT 132 
#define  KEYWORD 131 
 int /*<<< orphan*/  LC_ALL_MASK ; 
#define  PUNC_SEEN 130 
#define  PUNC_SEEN_SVN 129 
#define  TEXT 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 char* FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 struct sbuf* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC15(FILE *fp, const char *name, bool quiet)
{
	int c;
	bool hasid = false;
	bool subversion = false;
	analyzer_states state = INIT;
	struct sbuf *id = FUNC13();
	locale_t l;

	l = FUNC6(LC_ALL_MASK, "C", NULL);

	if (name != NULL)
		FUNC7("%s:\n", name);

	while ((c = FUNC0(fp)) != EOF) {
		switch (state) {
		case INIT:
			if (c == '$') {
				/* Transit to DELIM_SEEN if we see $ */
				state = DELIM_SEEN;
			} else {
				/* Otherwise, stay in INIT state */
				continue;
			}
			break;
		case DELIM_SEEN:
			if (FUNC4(c, l)) {
				/* Transit to KEYWORD if we see letter */
				FUNC8(id);
				FUNC14(id, '$');
				FUNC14(id, c);
				state = KEYWORD;

				continue;
			} else if (c == '$') {
				/* Or, stay in DELIM_SEEN if more $ */
				continue;
			} else {
				/* Otherwise, transit back to INIT */
				state = INIT;
			}
			break;
		case KEYWORD:
			FUNC14(id, c);

			if (FUNC4(c, l)) {
				/*
				 * Stay in KEYWORD if additional letter is seen
				 */
				continue;
			} else if (c == ':') {
				/*
				 * See ':' for the first time, transit to
				 * PUNC_SEEN.
				 */
				state = PUNC_SEEN;
				subversion = false;
			} else if (c == '$') {
				/*
				 * Incomplete ident.  Go back to DELIM_SEEN
				 * state because we see a '$' which could be
				 * the beginning of a keyword.
				 */
				state = DELIM_SEEN;
			} else {
				/*
				 * Go back to INIT state otherwise.
				 */
				state = INIT;
			}
			break;
		case PUNC_SEEN:
		case PUNC_SEEN_SVN:
			FUNC14(id, c);

			switch (c) {
			case ':':
				/*
				 * If we see '::' (seen : in PUNC_SEEN),
				 * activate subversion treatment and transit
				 * to PUNC_SEEN_SVN state.
				 *
				 * If more than two :'s were seen, the ident
				 * is invalid and we would therefore go back
				 * to INIT state.
				 */
				if (state == PUNC_SEEN) {
					state = PUNC_SEEN_SVN;
					subversion = true;
				} else {
					state = INIT;
				}
				break;
			case ' ':
				/*
				 * A space after ':' or '::' indicates we are at the
				 * last component of potential ident.
				 */
				state = TEXT;
				break;
			default:
				/* All other characters are invalid */
				state = INIT;
				break;
			}
			break;
		case TEXT:
			FUNC14(id, c);

			if (FUNC5(c, l)) {
				/* Control characters are not allowed in this state */
				state = INIT;
			} else if (c == '$') {
				FUNC11(id);
				/*
				 * valid ident should end with a space.
				 *
				 * subversion extension uses '#' to indicate that
				 * the keyword expansion have exceeded the fixed
				 * width, so it is also permitted if we are in
				 * subversion mode.  No length check is enforced
				 * because GNU RCS ident(1) does not do it either.
				 */
				c = FUNC9(id)[FUNC12(id) - 2];
				if (c == ' ' || (subversion && c == '#')) {
					FUNC7("     %s\n", FUNC9(id));
					hasid = true;
				}
				state = INIT;
			}
			/* Other characters: stay in the state */
			break;
		}
	}
	FUNC10(id);
	FUNC2(l);

	if (!hasid) {
		if (!quiet)
			FUNC1(stderr, "%s warning: no id keywords in %s\n",
			    FUNC3(), name ? name : "standard input");

		return (EXIT_FAILURE);
	}

	return (EXIT_SUCCESS);
}