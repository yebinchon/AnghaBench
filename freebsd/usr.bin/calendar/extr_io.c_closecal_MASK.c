#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* pw_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int STDIN_FILENO ; 
 int /*<<< orphan*/  _PATH_SENDMAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* dayname ; 
 int /*<<< orphan*/  doall ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  path ; 
 scalar_t__ FUNC8 (int*) ; 
 TYPE_1__* pw ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int) ; 

void
FUNC16(FILE *fp)
{
	struct stat sbuf;
	int nread, pdes[2], status;
	char buf[1024];

	if (!doall)
		return;

	FUNC10(fp);
	if (FUNC7(FUNC5(fp), &sbuf) || !sbuf.st_size)
		goto done;
	if (FUNC8(pdes) < 0)
		goto done;
	switch (FUNC6()) {
	case -1:			/* error */
		(void)FUNC1(pdes[0]);
		(void)FUNC1(pdes[1]);
		goto done;
	case 0:
		/* child -- set stdin to pipe output */
		if (pdes[0] != STDIN_FILENO) {
			(void)FUNC2(pdes[0], STDIN_FILENO);
			(void)FUNC1(pdes[0]);
		}
		(void)FUNC1(pdes[1]);
		FUNC3(_PATH_SENDMAIL, "sendmail", "-i", "-t", "-F",
		    "\"Reminder Service\"", (char *)NULL);
		FUNC14(_PATH_SENDMAIL);
		FUNC0(1);
	}
	/* parent -- write to pipe input */
	(void)FUNC1(pdes[0]);

	FUNC15(pdes[1], "From: \"Reminder Service\" <", 26);
	FUNC15(pdes[1], pw->pw_name, FUNC11(pw->pw_name));
	FUNC15(pdes[1], ">\nTo: <", 7);
	FUNC15(pdes[1], pw->pw_name, FUNC11(pw->pw_name));
	FUNC15(pdes[1], ">\nSubject: ", 11);
	FUNC15(pdes[1], dayname, FUNC11(dayname));
	FUNC15(pdes[1], "'s Calendar\nPrecedence: bulk\n\n", 30);

	while ((nread = FUNC9(FUNC5(fp), buf, sizeof(buf))) > 0)
		(void)FUNC15(pdes[1], buf, nread);
	(void)FUNC1(pdes[1]);
done:	(void)FUNC4(fp);
	(void)FUNC12(path);
	while (FUNC13(&status) >= 0);
}