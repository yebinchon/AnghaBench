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
struct stat {int /*<<< orphan*/  st_size; } ;
struct printer {char* printer; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  ACCESS 132 
 int /*<<< orphan*/  DORETURN ; 
 int EOF ; 
#define  FATALERR 131 
#define  FILTERERR 130 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
#define  NOACCT 129 
#define  OK 128 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 char* _PATH_SENDMAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct printer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 char* jobname ; 
 char* local_host ; 
 char* origin_host ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  tempstderr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct printer *pp, char *userid, int bombed)
{
	register int i;
	int p[2], s;
	register const char *cp;
	struct stat stb;
	FILE *fp;

	FUNC11(p);
	if ((s = FUNC4(pp, DORETURN)) == 0) {		/* child */
		FUNC5(p[0], STDIN_FILENO);
		FUNC3();
		FUNC2(3);
		if ((cp = FUNC15(_PATH_SENDMAIL, '/')) != NULL)
			cp++;
		else
			cp = _PATH_SENDMAIL;
		FUNC6(_PATH_SENDMAIL, cp, "-t", (char *)0);
		FUNC0(0);
	} else if (s > 0) {				/* parent */
		FUNC5(p[1], STDOUT_FILENO);
		FUNC12("To: %s@%s\n", userid, origin_host);
		FUNC12("Subject: %s printer job \"%s\"\n", pp->printer,
			*jobname ? jobname : "<unknown>");
		FUNC12("Reply-To: root@%s\n\n", local_host);
		FUNC12("Your printer job ");
		if (*jobname)
			FUNC12("(%s) ", jobname);

		switch (bombed) {
		case OK:
			cp = "OK";
			FUNC12("\ncompleted successfully\n");
			break;
		default:
		case FATALERR:
			cp = "FATALERR";
			FUNC12("\ncould not be printed\n");
			break;
		case NOACCT:
			cp = "NOACCT";
			FUNC12("\ncould not be printed without an account on %s\n",
			    local_host);
			break;
		case FILTERERR:
			cp = "FILTERERR";
			if (FUNC14(tempstderr, &stb) < 0 || stb.st_size == 0
			    || (fp = FUNC9(tempstderr, "r")) == NULL) {
				FUNC12("\nhad some errors and may not have printed\n");
				break;
			}
			FUNC12("\nhad the following errors and may not have printed:\n");
			while ((i = FUNC10(fp)) != EOF)
				FUNC13(i);
			(void) FUNC7(fp);
			break;
		case ACCESS:
			cp = "ACCESS";
			FUNC12("\nwas not printed because it was not linked to the original file\n");
		}
		FUNC8(stdout);
		(void) FUNC1(STDOUT_FILENO);
	} else {
		FUNC16(LOG_WARNING, "unable to send mail to %s: %m", userid);
		return;
	}
	(void) FUNC1(p[0]);
	(void) FUNC1(p[1]);
	FUNC17(NULL);
	FUNC16(LOG_INFO, "mail sent to user %s about job %s on printer %s (%s)",
	    userid, *jobname ? jobname : "<unknown>", pp->printer, cp);
}