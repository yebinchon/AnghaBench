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
struct message {int dummy; } ;
struct ignoretab {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MMNORM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int*,int /*<<< orphan*/ ) ; 
 struct ignoretab* ignore ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 struct message* message ; 
 int msgCount ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct message*,int /*<<< orphan*/ *,struct ignoretab*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct message*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int
FUNC9(char ms[], FILE *fp, char *fn, int f)
{
	int *msgvec;
	struct ignoretab *ig;
	char *tabst;

	msgvec = (int *)FUNC4((msgCount+1) * sizeof(*msgvec));
	if (msgvec == NULL)
		return (0);
	if (FUNC1(ms, msgvec, 0) < 0)
		return (0);
	if (*msgvec == 0) {
		*msgvec = FUNC0(0, MMNORM);
		if (*msgvec == 0) {
			FUNC3("No appropriate messages\n");
			return (0);
		}
		msgvec[1] = 0;
	}
	if (f == 'f' || f == 'F')
		tabst = NULL;
	else if ((tabst = FUNC7("indentprefix")) == NULL)
		tabst = "\t";
	ig = FUNC2((unsigned char)f) ? NULL : ignore;
	FUNC3("Interpolating:");
	for (; *msgvec != 0; msgvec++) {
		struct message *mp = message + *msgvec - 1;

		FUNC6(mp);
		FUNC3(" %d", *msgvec);
		if (FUNC5(mp, fp, ig, tabst) < 0) {
			FUNC8("%s", fn);
			return (-1);
		}
	}
	FUNC3("\n");
	return (0);
}