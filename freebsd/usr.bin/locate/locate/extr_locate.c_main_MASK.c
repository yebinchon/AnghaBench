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
 int /*<<< orphan*/  LC_ALL ; 
 int UCHAR_MAX ; 
 char* _PATH_FCODES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  counter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int f_icase ; 
 int /*<<< orphan*/  f_limit ; 
 int f_mmap ; 
 int f_silent ; 
 int f_statistic ; 
 int f_stdin ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/ * myctype ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 char separator ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(int argc, char **argv)
{
        register int ch;
        char **dbv = NULL;
	char *path_fcodes;      /* locate database */
#ifdef MMAP
        f_mmap = 1;		/* mmap is default */
#endif
	(void) FUNC8(LC_ALL, "");

        while ((ch = FUNC4(argc, argv, "0Scd:il:ms")) != -1)
                switch(ch) {
                case '0':	/* 'find -print0' style */
			separator = '\0';
			break;
                case 'S':	/* statistic lines */   
                        f_statistic = 1;
                        break;
                case 'l': /* limit number of output lines, 0 == infinite */
                        f_limit = FUNC0(optarg);
                        break;
                case 'd':	/* database */
                        dbv = FUNC1(dbv, optarg, _PATH_FCODES);
                        break;
                case 'i':	/* ignore case */
                        f_icase = 1;
                        break;
                case 'm':	/* mmap */
#ifdef MMAP
                        f_mmap = 1;
#else
						FUNC12("mmap(2) not implemented");
#endif
                        break;
                case 's':	/* stdio lib */
                        f_mmap = 0;
                        break;
                case 'c': /* suppress output, show only count of matches */
                        f_silent = 1;
                        break;
                default:
                        FUNC11();
                }
        argv += optind;
        argc -= optind;

        /* to few arguments */
        if (argc < 1 && !(f_statistic))
                FUNC11();

        /* no (valid) database as argument */
        if (dbv == NULL || *dbv == NULL) {
                /* try to read database from environment */
                if ((path_fcodes = FUNC3("LOCATE_PATH")) == NULL ||
		     *path_fcodes == '\0')
                        /* use default database */
                        dbv = FUNC1(dbv, _PATH_FCODES, _PATH_FCODES);
                else		/* $LOCATE_PATH */
                        dbv = FUNC1(dbv, path_fcodes, _PATH_FCODES);
        }

        if (f_icase && UCHAR_MAX < 4096) /* init tolower lookup table */
                for (ch = 0; ch < UCHAR_MAX + 1; ch++)
                        myctype[ch] = FUNC10(ch);

        /* foreach database ... */
        while((path_fcodes = *dbv) != NULL) {
                dbv++;

                if (!FUNC9(path_fcodes, "-"))
                        f_stdin = 1;
		else
			f_stdin = 0;

#ifndef MMAP
		f_mmap = 0;	/* be paranoid */
#endif
                if (!f_mmap || f_stdin || f_statistic) 
			FUNC6(path_fcodes, argv);
                else 
			FUNC7(path_fcodes, argv);
        }

        if (f_silent)
                FUNC5(counter);
        FUNC2(0);
}