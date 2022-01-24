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
struct stat {int st_mode; } ;
typedef  scalar_t__ regoff_t ;
struct TYPE_3__ {scalar_t__ rm_eo; scalar_t__ rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  char* ccharp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  LC_ALL ; 
 char* LOCATECMD ; 
 char* MANWHEREISALLCMD ; 
 char* MANWHEREISCMD ; 
 char* MANWHEREISMATCH ; 
 int NO_BIN_FOUND ; 
 int NO_MAN_FOUND ; 
 int NO_SRC_FOUND ; 
 int REG_EXTENDED ; 
 int REG_NOSUB ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char** bindirs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/ * mandirs ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 
 scalar_t__ opt_a ; 
 scalar_t__ opt_b ; 
 scalar_t__ opt_m ; 
 int /*<<< orphan*/  opt_q ; 
 scalar_t__ opt_s ; 
 scalar_t__ opt_u ; 
 scalar_t__ opt_x ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 char** query ; 
 char* FUNC13 (char*,size_t) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,char**) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 char** sourcedirs ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,char*) ; 
 scalar_t__ FUNC22 (char*,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 char* FUNC24 (char*,char) ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 char* FUNC27 (char*) ; 
 int FUNC28 (char*) ; 
 scalar_t__ FUNC29 (char*,char*,int) ; 
 char* FUNC30 (char*,char) ; 

int
FUNC31(int argc, char **argv)
{
	int unusual, i, printed;
	char *bin, buf[BUFSIZ], *cp, *cp2, *man, *name, *src;
	ccharp *dp;
	size_t nlen, olen, s;
	struct stat sb;
	regex_t re, re2;
	regmatch_t matches[2];
	regoff_t rlen;
	FILE *p;

	FUNC20(LC_ALL, "");

	FUNC18(argc, argv);
	FUNC2();

	if (mandirs == NULL)
		opt_m = 0;
	if (bindirs == NULL)
		opt_b = 0;
	if (sourcedirs == NULL)
		opt_s = 0;
	if (opt_m + opt_b + opt_s == 0)
		FUNC3(EX_DATAERR, "no directories to search");

	if (opt_m) {
		FUNC19("MANPATH", FUNC1(mandirs), 1);
		if ((i = FUNC14(&re, MANWHEREISMATCH, REG_EXTENDED)) != 0) {
			FUNC15(i, &re, buf, BUFSIZ - 1);
			FUNC3(EX_UNAVAILABLE, "regcomp(%s) failed: %s",
			     MANWHEREISMATCH, buf);
		}
	}

	for (; (name = *query) != NULL; query++) {
		/* strip leading path name component */
		if ((cp = FUNC30(name, '/')) != NULL)
			name = cp + 1;
		/* strip SCCS or RCS suffix/prefix */
		if (FUNC28(name) > 2 && FUNC29(name, "s.", 2) == 0)
			name += 2;
		if ((s = FUNC28(name)) > 2 && FUNC25(name + s - 2, ",v") == 0)
			name[s - 2] = '\0';
		/* compression suffix */
		s = FUNC28(name);
		if (s > 2 &&
		    (FUNC25(name + s - 2, ".z") == 0 ||
		     FUNC25(name + s - 2, ".Z") == 0))
			name[s - 2] = '\0';
		else if (s > 3 &&
			 FUNC25(name + s - 3, ".gz") == 0)
			name[s - 3] = '\0';
		else if (s > 4 &&
			 FUNC25(name + s - 4, ".bz2") == 0)
			name[s - 4] = '\0';

		unusual = 0;
		bin = man = src = NULL;
		s = FUNC28(name);

		if (opt_b) {
			/*
			 * Binaries have to match exactly, and must be regular
			 * executable files.
			 */
			unusual = unusual | NO_BIN_FOUND;
			for (dp = bindirs; *dp != NULL; dp++) {
				cp = FUNC7(FUNC28(*dp) + 1 + s + 1);
				if (cp == NULL)
					FUNC0();
				FUNC26(cp, *dp);
				FUNC23(cp, "/");
				FUNC23(cp, name);
				if (FUNC22(cp, &sb) == 0 &&
				    (sb.st_mode & S_IFMT) == S_IFREG &&
				    (sb.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))
				    != 0) {
					unusual = unusual & ~NO_BIN_FOUND;
					if (bin == NULL) {
						bin = FUNC27(cp);
					} else {
						olen = FUNC28(bin);
						nlen = FUNC28(cp);
						bin = FUNC13(bin, 
							      olen + nlen + 2);
						if (bin == NULL)
							FUNC0();
						FUNC23(bin, " ");
						FUNC23(bin, cp);
					}
					if (!opt_a) {
						FUNC6(cp);
						break;
					}
				}
				FUNC6(cp);
			}
		}

		if (opt_m) {
			/*
			 * Ask the man command to perform the search for us.
			 */
			unusual = unusual | NO_MAN_FOUND;
			if (opt_a)
				cp = FUNC7(sizeof MANWHEREISALLCMD - 2 + s);
			else
				cp = FUNC7(sizeof MANWHEREISCMD - 2 + s);

			if (cp == NULL)
				FUNC0();

			if (opt_a)
				FUNC21(cp, MANWHEREISALLCMD, name);
			else
				FUNC21(cp, MANWHEREISCMD, name);

			if ((p = FUNC10(cp, "r")) != NULL) {
			    
				while (FUNC4(buf, BUFSIZ - 1, p) != NULL) {
					unusual = unusual & ~NO_MAN_FOUND;
				
					if ((cp2 = FUNC24(buf, '\n')) != NULL)
						*cp2 = '\0';
					if (FUNC16(&re, buf, 2, 
						    matches, 0) == 0 &&
					    (rlen = matches[1].rm_eo - 
					     matches[1].rm_so) > 0) {
						/*
						 * man -w found formatted
						 * page, need to pick up
						 * source page name.
						 */
						cp2 = FUNC7(rlen + 1);
						if (cp2 == NULL)
							FUNC0();
						FUNC8(cp2, 
						       buf + matches[1].rm_so,
						       rlen);
						cp2[rlen] = '\0';
					} else {
						/*
						 * man -w found plain source
						 * page, use it.
						 */
						cp2 = FUNC27(buf);
						if (cp2 == NULL)
							FUNC0();
					}

					if (man == NULL) {
						man = FUNC27(cp2);
					} else {
						olen = FUNC28(man);
						nlen = FUNC28(cp2);
						man = FUNC13(man, 
							      olen + nlen + 2);
						if (man == NULL)
							FUNC0();
						FUNC23(man, " ");
						FUNC23(man, cp2);
					}

					FUNC6(cp2);
					
					if (!opt_a)
						break;
				}
				FUNC9(p);
				FUNC6(cp);
			}
		}

		if (opt_s) {
			/*
			 * Sources match if a subdir with the exact
			 * name is found.
			 */
			unusual = unusual | NO_SRC_FOUND;
			for (dp = sourcedirs; *dp != NULL; dp++) {
				cp = FUNC7(FUNC28(*dp) + 1 + s + 1);
				if (cp == NULL)
					FUNC0();
				FUNC26(cp, *dp);
				FUNC23(cp, "/");
				FUNC23(cp, name);
				if (FUNC22(cp, &sb) == 0 &&
				    (sb.st_mode & S_IFMT) == S_IFDIR) {
					unusual = unusual & ~NO_SRC_FOUND;
					if (src == NULL) {
						src = FUNC27(cp);
					} else {
						olen = FUNC28(src);
						nlen = FUNC28(cp);
						src = FUNC13(src, 
							      olen + nlen + 2);
						if (src == NULL)
							FUNC0();
						FUNC23(src, " ");
						FUNC23(src, cp);
					}
					if (!opt_a) {
						FUNC6(cp);
						break;
					}
				}
				FUNC6(cp);
			}
			/*
			 * If still not found, ask locate to search it
			 * for us.  This will find sources for things
			 * like lpr that are well hidden in the
			 * /usr/src tree, but takes a lot longer.
			 * Thus, option -x (`expensive') prevents this
			 * search.
			 *
			 * Do only match locate output that starts
			 * with one of our source directories, and at
			 * least one further level of subdirectories.
			 */
			if (opt_x || (src && !opt_a))
				goto done_sources;

			cp = FUNC7(sizeof LOCATECMD - 2 + s);
			if (cp == NULL)
				FUNC0();
			FUNC21(cp, LOCATECMD, name);
			if ((p = FUNC10(cp, "r")) == NULL)
				goto done_sources;
			while ((src == NULL || opt_a) &&
			       (FUNC4(buf, BUFSIZ - 1, p)) != NULL) {
				if ((cp2 = FUNC24(buf, '\n')) != NULL)
					*cp2 = '\0';
				for (dp = sourcedirs;
				     (src == NULL || opt_a) && *dp != NULL;
				     dp++) {
					cp2 = FUNC7(FUNC28(*dp) + 9);
					if (cp2 == NULL)
						FUNC0();
					FUNC26(cp2, "^");
					FUNC23(cp2, *dp);
					FUNC23(cp2, "/[^/]+/");
					if ((i = FUNC14(&re2, cp2,
							 REG_EXTENDED|REG_NOSUB))
					    != 0) {
						FUNC15(i, &re, buf,
							 BUFSIZ - 1);
						FUNC3(EX_UNAVAILABLE,
						     "regcomp(%s) failed: %s",
						     cp2, buf);
					}
					FUNC6(cp2);
					if (FUNC16(&re2, buf, 0,
						    (regmatch_t *)NULL, 0)
					    == 0) {
						unusual = unusual & 
						          ~NO_SRC_FOUND;
						if (src == NULL) {
							src = FUNC27(buf);
						} else {
							olen = FUNC28(src);
							nlen = FUNC28(buf);
							src = FUNC13(src, 
								      olen + 
								      nlen + 2);
							if (src == NULL)
								FUNC0();
							FUNC23(src, " ");
							FUNC23(src, buf);
						}
					}
					FUNC17(&re2);
				}
			}
			FUNC9(p);
			FUNC6(cp);
		}
	  done_sources:

		if (opt_u && !unusual)
			continue;

		printed = 0;
		if (!opt_q) {
			FUNC11("%s:", name);
			printed++;
		}
		if (bin) {
			if (printed++)
				FUNC12(' ');
			FUNC5(bin, stdout);
		}
		if (man) {
			if (printed++)
				FUNC12(' ');
			FUNC5(man, stdout);
		}
		if (src) {
			if (printed++)
				FUNC12(' ');
			FUNC5(src, stdout);
		}
		if (printed)
			FUNC12('\n');
	}

	if (opt_m)
		FUNC17(&re);

	return (0);
}