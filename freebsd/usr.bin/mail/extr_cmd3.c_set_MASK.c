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
typedef  int /*<<< orphan*/  varbuf ;
struct var {int /*<<< orphan*/  v_name; struct var* v_link; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int HSHSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char* FUNC5 (char*) ; 
 struct var** variables ; 

int
FUNC6(void *v)
{
	char **arglist = v;
	struct var *vp;
	char *cp, *cp2;
	char varbuf[BUFSIZ], **ap, **p;
	int errs, h, s;

	if (*arglist == NULL) {
		for (h = 0, s = 1; h < HSHSIZE; h++)
			for (vp = variables[h]; vp != NULL; vp = vp->v_link)
				s++;
		ap = (char **)FUNC3(s * sizeof(*ap));
		for (h = 0, p = ap; h < HSHSIZE; h++)
			for (vp = variables[h]; vp != NULL; vp = vp->v_link)
				*p++ = vp->v_name;
		*p = NULL;
		FUNC4(ap);
		for (p = ap; *p != NULL; p++)
			FUNC2("%s\t%s\n", *p, FUNC5(*p));
		return (0);
	}
	errs = 0;
	for (ap = arglist; *ap != NULL; ap++) {
		cp = *ap;
		cp2 = varbuf;
		while (cp2 < varbuf + sizeof(varbuf) - 1 && *cp != '=' && *cp != '\0')
			*cp2++ = *cp++;
		*cp2 = '\0';
		if (*cp == '\0')
			cp = "";
		else
			cp++;
		if (FUNC1(varbuf, "")) {
			FUNC2("Non-null variable name required\n");
			errs++;
			continue;
		}
		FUNC0(varbuf, cp);
	}
	return (errs);
}