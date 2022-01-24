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
struct hent {double h_feetpages; scalar_t__ h_count; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  allflag ; 
 scalar_t__ FUNC0 (char,char*) ; 
 double FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 struct hent* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 struct hent* FUNC5 (char*) ; 
 scalar_t__ mflag ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static void
FUNC7(FILE *acctf)
{
	char linebuf[BUFSIZ];
	double t;
	register char *cp, *cp2;
	register struct hent *hp;
	register int ic;

	while (FUNC4(linebuf, BUFSIZ, acctf) != NULL) {
		cp = linebuf;
		while (FUNC0(*cp, " \t"))
			cp++;
		t = FUNC1(cp);
		while (FUNC0(*cp, ".0123456789"))
			cp++;
		while (FUNC0(*cp, " \t"))
			cp++;
		for (cp2 = cp; !FUNC0(*cp2, " \t\n"); cp2++)
			;
		ic = FUNC2(cp2);
		*cp2 = '\0';
		if (mflag && FUNC6(cp, ':'))
		    cp = FUNC6(cp, ':') + 1;
		hp = FUNC5(cp);
		if (hp == NULL) {
			if (!allflag)
				continue;
			hp = FUNC3(cp);
		}
		hp->h_feetpages += t;
		if (ic)
			hp->h_count += ic;
		else
			hp->h_count++;
	}
}