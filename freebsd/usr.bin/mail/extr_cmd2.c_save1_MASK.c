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
struct message {int /*<<< orphan*/  m_flag; } ;
struct ignoretab {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  MMNORM ; 
 int /*<<< orphan*/  MSAVED ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int*,int /*<<< orphan*/ ) ; 
 struct message* message ; 
 int msgCount ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct message*,int /*<<< orphan*/ *,struct ignoretab*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,int*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC12 (struct message*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

int
FUNC15(char str[], int mark, const char *cmd, struct ignoretab *ignore)
{
	struct message *mp;
	char *file;
	const char *disp;
	int f, *msgvec, *ip;
	FILE *obuf;

	msgvec = (int *)FUNC9((msgCount + 2) * sizeof(*msgvec));
	if ((file = FUNC11(str, &f)) == NULL)
		return (1);
	if (!f) {
		*msgvec = FUNC6(0, MMNORM);
		if (*msgvec == 0) {
			FUNC8("No messages to %s.\n", cmd);
			return (1);
		}
		msgvec[1] = 0;
	}
	if (f && FUNC7(str, msgvec, 0) < 0)
		return (1);
	if ((file = FUNC3(file)) == NULL)
		return (1);
	FUNC8("\"%s\" ", file);
	(void)FUNC5(stdout);
	if (FUNC2(file, 0) >= 0)
		disp = "[Appended]";
	else
		disp = "[New file]";
	if ((obuf = FUNC1(file, "a")) == NULL) {
		FUNC13((char *)NULL);
		return (1);
	}
	for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++) {
		mp = &message[*ip - 1];
		FUNC12(mp);
		if (FUNC10(mp, obuf, ignore, NULL) < 0) {
			FUNC14("%s", file);
			(void)FUNC0(obuf);
			return (1);
		}
		if (mark)
			mp->m_flag |= MSAVED;
	}
	(void)FUNC5(obuf);
	if (FUNC4(obuf))
		FUNC13("%s", file);
	(void)FUNC0(obuf);
	FUNC8("%s\n", disp);
	return (0);
}