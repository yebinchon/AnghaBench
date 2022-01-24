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
typedef  int /*<<< orphan*/  namebuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 char* FUNC0 (char*,struct message*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct message*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 size_t FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char) ; 

char *
FUNC10(struct message *mp, int reptype)
{
	char namebuf[LINESIZE];
	char linebuf[LINESIZE];
	char *cp, *cp2;
	FILE *ibuf;
	int first = 1;

	if ((cp = FUNC0("from", mp)) != NULL)
		return (cp);
	if (reptype == 0 && (cp = FUNC0("sender", mp)) != NULL)
		return (cp);
	ibuf = FUNC3(mp);
	namebuf[0] = '\0';
	if (FUNC1(ibuf, linebuf, LINESIZE) < 0)
		return (FUNC2(namebuf));
newname:
	for (cp = linebuf; *cp != '\0' && *cp != ' '; cp++)
		;
	for (; *cp == ' ' || *cp == '\t'; cp++)
		;
	for (cp2 = &namebuf[FUNC7(namebuf)];
	    *cp != '\0' && *cp != ' ' && *cp != '\t' &&
	    cp2 < namebuf + LINESIZE - 1;)
		*cp2++ = *cp++;
	*cp2 = '\0';
	if (FUNC1(ibuf, linebuf, LINESIZE) < 0)
		return (FUNC2(namebuf));
	if ((cp = FUNC5(linebuf, 'F')) == NULL)
		return (FUNC2(namebuf));
	if (FUNC8(cp, "From", 4) != 0)
		return (FUNC2(namebuf));
	while ((cp = FUNC5(cp, 'r')) != NULL) {
		if (FUNC8(cp, "remote", 6) == 0) {
			if ((cp = FUNC5(cp, 'f')) == NULL)
				break;
			if (FUNC8(cp, "from", 4) != 0)
				break;
			if ((cp = FUNC5(cp, ' ')) == NULL)
				break;
			cp++;
			if (first) {
				cp2 = namebuf;
				first = 0;
			} else
				cp2 = FUNC9(namebuf, '!') + 1;
			FUNC6(cp2, cp, sizeof(namebuf) - (cp2 - namebuf) - 1);
			FUNC4(namebuf, "!");
			goto newname;
		}
		cp++;
	}
	return (FUNC2(namebuf));
}