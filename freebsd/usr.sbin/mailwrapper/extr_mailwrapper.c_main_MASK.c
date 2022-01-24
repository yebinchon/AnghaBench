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
typedef  char* u_long ;
struct arglist {int /*<<< orphan*/  argv; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_MAIL ; 
 int /*<<< orphan*/  LOG_PID ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  WS ; 
 char* _PATH_DEFAULTMTA ; 
 char* _PATH_MAILERCONF ; 
 int /*<<< orphan*/  FUNC0 (struct arglist*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct arglist*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 scalar_t__ FUNC16 (char*,char const*) ; 
 char* FUNC17 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char const*,char*) ; 

int
FUNC20(int argc, char *argv[], char *envp[])
{
	FILE *config;
	char *line, *cp, *from, *to, *ap;
	const char *progname;
	char localmailerconf[MAXPATHLEN];
	const char *mailerconf;
	size_t len, lineno = 0;
	int i;
	struct arglist al;

	/* change __progname to mailwrapper so we get sensible error messages */
	progname = FUNC11();
	FUNC14("mailwrapper");

	FUNC12(&al);
	FUNC0(&al, argv[0]);

	FUNC15(localmailerconf, MAXPATHLEN, "%s/etc/mail/mailer.conf",
	    FUNC10("LOCALBASE") ? FUNC10("LOCALBASE") : "/usr/local");

	mailerconf = localmailerconf;
	if ((config = FUNC7(localmailerconf, "r")) == NULL)
		mailerconf = _PATH_MAILERCONF;

	if (config == NULL && ((config = FUNC7(mailerconf, "r")) == NULL)) {
		FUNC0(&al, NULL);
		FUNC13(FUNC11(), LOG_PID, LOG_MAIL);
		FUNC19(LOG_INFO, "cannot open %s, using %s as default MTA",
		    mailerconf, _PATH_DEFAULTMTA);
		FUNC1();
		FUNC4(_PATH_DEFAULTMTA, al.argv, envp);
		FUNC2(EX_OSERR, "cannot exec %s", _PATH_DEFAULTMTA);
		/*NOTREACHED*/
	}

	for (;;) {
		if ((line = FUNC8(config, &len, &lineno, NULL, 0)) == NULL) {
			if (FUNC6(config))
				FUNC3(EX_CONFIG, "no mapping in %s", mailerconf);
			FUNC2(EX_CONFIG, "cannot parse line %lu", (u_long)lineno);
		}

#define	WS	" \t\n"
		cp = line;

		cp += FUNC18(cp, WS);
		if (cp[0] == '\0') {
			/* empty line */
			FUNC9(line);
			continue;
		}

		if ((from = FUNC17(&cp, WS)) == NULL || cp == NULL)
			goto parse_error;

		cp += FUNC18(cp, WS);

		if ((to = FUNC17(&cp, WS)) == NULL)
			goto parse_error;

		if (FUNC16(from, progname) == 0) {
			for (ap = FUNC17(&cp, WS); ap != NULL;
			     ap = FUNC17(&cp, WS)) {
				if (*ap)
				    FUNC0(&al, ap);
			}
			break;
		}

		FUNC9(line);
	}

	(void)FUNC5(config);

	for (i = 1; i < argc; i++)
		FUNC0(&al, argv[i]);

	FUNC0(&al, NULL);
	FUNC4(to, al.argv, envp);
	FUNC2(EX_OSERR, "cannot exec %s", to);
	/*NOTREACHED*/
parse_error:
	FUNC3(EX_CONFIG, "parse error in %s at line %lu",
	    mailerconf, (u_long)lineno);
	/*NOTREACHED*/
}