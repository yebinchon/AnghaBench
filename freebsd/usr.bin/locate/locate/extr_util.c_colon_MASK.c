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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (int) ; 
 char** FUNC3 (char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

char **
FUNC5(char **dbv, char *path, char *dot)
{
	int vlen, slen;
	char *c, *ch, *p;
	char **pv;

	if (dbv == NULL) {
		if ((dbv = FUNC2(sizeof(char *))) == NULL)
			FUNC1(1, "malloc");
		*dbv = NULL;
	}

	/* empty string */
	if (*path == '\0') {
		FUNC4("empty database name, ignored");
		return(dbv);
	}

	/* length of string vector */
	for(vlen = 0, pv = dbv; *pv != NULL; pv++, vlen++);

	for (ch = c = path; ; ch++) {
		if (*ch == ':' ||
		    (!*ch && !(*(ch - 1) == ':' && ch == 1+ path))) {
			/* single colon -> dot */
			if (ch == c)
				p = dot;
			else {
				/* a string */
				slen = ch - c;
				if ((p = FUNC2(sizeof(char) * (slen + 1))) 
				    == NULL)
					FUNC1(1, "malloc");
				FUNC0(c, p, slen);
				*(p + slen) = '\0';
			}
			/* increase dbv with element p */
			if ((dbv = FUNC3(dbv, sizeof(char *) * (vlen + 2)))
			    == NULL)
				FUNC1(1, "realloc");
			*(dbv + vlen) = p;
			*(dbv + ++vlen) = NULL;
			c = ch + 1;
		}
		if (*ch == '\0')
			break;
	}
	return (dbv);
}