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
struct stat {int /*<<< orphan*/  st_mtime; } ;

/* Variables and functions */
 int BUFSIZ ; 
 size_t PSMAX ; 
 int _escaped ; 
 scalar_t__ blklevel ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,char) ; 
 int FUNC1 (char**,char**,char*) ; 
 int FUNC2 (char*,char*,char**) ; 
 void* FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char** defsfile ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int filter ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 
 int idx ; 
 int inchr ; 
 int incomm ; 
 int instr ; 
 void* l_acmbeg ; 
 void* l_acmend ; 
 void* l_blkbeg ; 
 void* l_blkend ; 
 void* l_chrbeg ; 
 void* l_chrend ; 
 void* l_combeg ; 
 void* l_comend ; 
 char l_escape ; 
 char** l_keywds ; 
 void* l_nocom ; 
 int /*<<< orphan*/  l_onecase ; 
 void* l_prcbeg ; 
 void* l_strbeg ; 
 void* l_strend ; 
 int /*<<< orphan*/  l_toplex ; 
 char* language ; 
 scalar_t__ margin ; 
 char* minus ; 
 char* minusn ; 
 int nokeyw ; 
 int pass ; 
 scalar_t__* plstack ; 
 int prccont ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 size_t psptr ; 
 char** pstack ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 

int
FUNC17(int argc, char **argv)
{
    const char *fname = "";
    struct stat stbuf;
    char buf[BUFSIZ];
    char *defs;
    int needbp = 0;

    argc--, argv++;
    do {
	char *cp;
	int i;

	if (argc > 0) {
	    if (!FUNC15(argv[0], "-h")) {
		if (argc == 1) {
		    FUNC12("'ds =H\n");
		    argc = 0;
		    goto rest;
		}
		FUNC12("'ds =H %s\n", argv[1]);
		argc--, argv++;
		argc--, argv++;
		if (argc > 0)
		    continue;
		goto rest;
	    }

	    /* act as a filter like eqn */
	    if (!FUNC15(argv[0], "-f")) {
		filter = true;
		argv[0] = argv[argc-1];
		argv[argc-1] = minus;
		continue;
	    }

	    /* take input from the standard place */
	    if (!FUNC15(argv[0], "-")) {
		argc = 0;
		goto rest;
	    }

	    /* build an index */
	    if (!FUNC15(argv[0], "-x")) {
		idx = true;
		argv[0] = minusn;
	    }

	    /* indicate no keywords */
	    if (!FUNC15(argv[0], "-n")) {
		nokeyw = true;
		argc--, argv++;
		continue;
	    }

	    /* specify the font size */
	    if (!FUNC16(argv[0], "-s", 2)) {
		i = 0;
		cp = argv[0] + 2;
		while (*cp)
		    i = i * 10 + (*cp++ - '0');
		FUNC12("'ps %d\n'vs %d\n", i, i+1);
		argc--, argv++;
		continue;
	    }

	    /* specify the language */
	    if (!FUNC16(argv[0], "-l", 2)) {
		language = argv[0]+2;
		argc--, argv++;
		continue;
	    }

	    /* specify the language description file */
	    if (!FUNC16(argv[0], "-d", 2)) {
		defsfile[0] = argv[1];
		argc--, argv++;
		argc--, argv++;
		continue;
	    }

	    /* open the file for input */
	    if (FUNC10(argv[0], "r", stdin) == NULL)
		FUNC5(1, "%s", argv[0]);
	    if (idx)
		FUNC12("'ta 4i 4.25i 5.5iR\n'in .5i\n");
	    fname = argv[0];
	    argc--, argv++;
	}
    rest:

	/*
	 *  get the  language definition from the defs file
	 */
	i = FUNC1(&defs, defsfile, language);
	if (i == -1) {
	    FUNC9 (stderr, "no entry for language %s\n", language);
	    FUNC6(0);
	} else  if (i == -2) { FUNC9(stderr,
	    "cannot find vgrindefs file %s\n", defsfile[0]);
	    FUNC6(0);
	} else if (i == -3) { FUNC9(stderr,
	    "potential reference loop detected in vgrindefs file %s\n",
            defsfile[0]);
	    FUNC6(0);
	}
	if (FUNC2(defs, "kw", &cp) == -1)
	    nokeyw = true;
	else  {
	    char **cpp;

	    cpp = l_keywds;
	    while (*cp) {
		while (*cp == ' ' || *cp =='\t')
		    *cp++ = '\0';
		if (*cp)
		    *cpp++ = cp;
		while (*cp != ' ' && *cp  != '\t' && *cp)
		    cp++;
	    }
	    *cpp = NULL;
	}
	FUNC2(defs, "pb", &cp);
	l_prcbeg = FUNC3(cp);
	FUNC2(defs, "cb", &cp);
	l_combeg = FUNC3(cp);
	FUNC2(defs, "ce", &cp);
	l_comend = FUNC3(cp);
	FUNC2(defs, "ab", &cp);
	l_acmbeg = FUNC3(cp);
	FUNC2(defs, "ae", &cp);
	l_acmend = FUNC3(cp);
	FUNC2(defs, "sb", &cp);
	l_strbeg = FUNC3(cp);
	FUNC2(defs, "se", &cp);
	l_strend = FUNC3(cp);
	FUNC2(defs, "bb", &cp);
	l_blkbeg = FUNC3(cp);
	FUNC2(defs, "be", &cp);
	l_blkend = FUNC3(cp);
	FUNC2(defs, "lb", &cp);
	l_chrbeg = FUNC3(cp);
	FUNC2(defs, "le", &cp);
	l_chrend = FUNC3(cp);
	if (FUNC2(defs, "nc", &cp) >= 0)
		l_nocom = FUNC3(cp);
	l_escape = '\\';
	l_onecase = (FUNC0(defs, "oc", ':') != NULL);
	l_toplex = (FUNC0(defs, "tl", ':') != NULL);

	/* initialize the program */

	incomm = false;
	instr = false;
	inchr = false;
	_escaped = false;
	blklevel = 0;
	for (psptr=0; psptr<PSMAX; psptr++) {
	    pstack[psptr][0] = '\0';
	    plstack[psptr] = 0;
	}
	psptr = -1;
	FUNC13("'-F\n");
	if (!filter) {
	    FUNC12(".ds =F %s\n", fname);
	    FUNC13("'wh 0 vH\n");
	    FUNC13("'wh -1i vF\n");
	}
	if (needbp) {
	    needbp = 0;
	    FUNC12(".()\n");
	    FUNC12(".bp\n");
	}
	if (!filter) {
	    FUNC11(FUNC8(stdin), &stbuf);
	    cp = FUNC4(&stbuf.st_mtime);
	    cp[16] = '\0';
	    cp[24] = '\0';
	    FUNC12(".ds =M %s %s\n", cp+4, cp+20);
	}

	/*
	 *	MAIN LOOP!!!
	 */
	while (FUNC7(buf, sizeof buf, stdin) != NULL) {
	    if (buf[0] == '\f') {
		FUNC12(".bp\n");
	    }
	    if (buf[0] == '.') {
		FUNC12("%s", buf);
		if (!FUNC16 (buf+1, "vS", 2))
		    pass = true;
		if (!FUNC16 (buf+1, "vE", 2))
		    pass = false;
		continue;
	    }
	    prccont = false;
	    if (!filter || pass)
		FUNC14(buf);
	    else
		FUNC12("%s", buf);
	    if (prccont && (psptr >= 0)) {
		FUNC13("'FC ");
		FUNC13(pstack[psptr]);
		FUNC13("\n");
	    }
#ifdef DEBUG
	    printf ("com %o str %o chr %o ptr %d\n", incomm, instr, inchr, psptr);
#endif
	    margin = 0;
	}
	needbp = 1;
    } while (argc > 0);
    FUNC6(0);
}