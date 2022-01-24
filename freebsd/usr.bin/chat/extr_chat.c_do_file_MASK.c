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
 int STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 

void
FUNC7(char *chatfile)
{
    int linect, sendflg;
    char *sp, *arg, quote;
    char buf [STR_LEN];
    FILE *cfp;

    cfp = FUNC5 (chatfile, "r");
    if (cfp == NULL)
	FUNC2(1, "%s -- open failed: %m", chatfile);

    linect = 0;
    sendflg = 0;

    while (FUNC4(buf, STR_LEN, cfp) != NULL) {
	sp = FUNC6 (buf, '\n');
	if (sp)
	    *sp = '\0';

	linect++;
	sp = buf;

        /* lines starting with '#' are comments. If a real '#'
           is to be expected, it should be quoted .... */
        if ( *sp == '#' )
	    continue;

	while (*sp != '\0') {
	    if (*sp == ' ' || *sp == '\t') {
		++sp;
		continue;
	    }

	    if (*sp == '"' || *sp == '\'') {
		quote = *sp++;
		arg = sp;
		while (*sp != quote) {
		    if (*sp == '\0')
			FUNC2(1, "unterminated quote (line %d)", linect);

		    if (*sp++ == '\\') {
			if (*sp != '\0')
			    ++sp;
		    }
		}
	    }
	    else {
		arg = sp;
		while (*sp != '\0' && *sp != ' ' && *sp != '\t')
		    ++sp;
	    }

	    if (*sp != '\0')
		*sp++ = '\0';

	    if (sendflg)
		FUNC1 (arg);
	    else
		FUNC0 (arg);
	    sendflg = !sendflg;
	}
    }
    FUNC3 (cfp);
}