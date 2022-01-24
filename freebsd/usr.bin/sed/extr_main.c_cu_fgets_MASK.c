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
typedef  int /*<<< orphan*/  string_ident ;
struct TYPE_2__ {char* s; struct TYPE_2__* next; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  CU_FILE 129 
#define  CU_STRING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 char* fname ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int linenum ; 
 int nflag ; 
 TYPE_1__* script ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

char *
FUNC8(char *buf, int n, int *more)
{
	static enum {ST_EOF, ST_FILE, ST_STRING} state = ST_EOF;
	static FILE *f;		/* Current open file */
	static char *s;		/* Current pointer inside string */
	static char string_ident[30];
	char *p;

again:
	switch (state) {
	case ST_EOF:
		if (script == NULL) {
			if (more != NULL)
				*more = 0;
			return (NULL);
		}
		linenum = 0;
		switch (script->type) {
		case CU_FILE:
			if ((f = FUNC5(script->s, "r")) == NULL)
				FUNC1(1, "%s", script->s);
			fname = script->s;
			state = ST_FILE;
			goto again;
		case CU_STRING:
			if (((size_t)FUNC6(string_ident,
			    sizeof(string_ident), "\"%s\"", script->s)) >=
			    sizeof(string_ident) - 1)
				(void)FUNC7(string_ident +
				    sizeof(string_ident) - 6, " ...\"");
			fname = string_ident;
			s = script->s;
			state = ST_STRING;
			goto again;
		default:
			FUNC0();
		}
	case ST_FILE:
		if ((p = FUNC4(buf, n, f)) != NULL) {
			linenum++;
			if (linenum == 1 && buf[0] == '#' && buf[1] == 'n')
				nflag = 1;
			if (more != NULL)
				*more = !FUNC3(f);
			return (p);
		}
		script = script->next;
		(void)FUNC2(f);
		state = ST_EOF;
		goto again;
	case ST_STRING:
		if (linenum == 0 && s[0] == '#' && s[1] == 'n')
			nflag = 1;
		p = buf;
		for (;;) {
			if (n-- <= 1) {
				*p = '\0';
				linenum++;
				if (more != NULL)
					*more = 1;
				return (buf);
			}
			switch (*s) {
			case '\0':
				state = ST_EOF;
				if (s == script->s) {
					script = script->next;
					goto again;
				} else {
					script = script->next;
					*p = '\0';
					linenum++;
					if (more != NULL)
						*more = 0;
					return (buf);
				}
			case '\n':
				*p++ = '\n';
				*p = '\0';
				s++;
				linenum++;
				if (more != NULL)
					*more = 0;
				return (buf);
			default:
				*p++ = *s++;
			}
		}
	}
	/* NOTREACHED */
	return (NULL);
}