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
typedef  int /*<<< orphan*/  wfile ;
struct s_subst {int n; int p; int wfd; int icase; int /*<<< orphan*/ * wfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERANGE ; 
 unsigned long INT_MAX ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  aflag ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  fname ; 
 int /*<<< orphan*/  linenum ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 unsigned long FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC7(char *p, struct s_subst *s)
{
	int gn;			/* True if we have seen g or n */
	unsigned long nval;
	char wfile[_POSIX2_LINE_MAX + 1], *q, *eq;

	s->n = 1;				/* Default */
	s->p = 0;
	s->wfile = NULL;
	s->wfd = -1;
	s->icase = 0;
	for (gn = 0;;) {
		FUNC0();			/* EXTENSION */
		switch (*p) {
		case 'g':
			if (gn)
				FUNC2(1,
"%lu: %s: more than one number or 'g' in substitute flags", linenum, fname);
			gn = 1;
			s->n = 0;
			break;
		case '\0':
		case '\n':
		case ';':
			return (p);
		case 'p':
			s->p = 1;
			break;
		case 'i':
		case 'I':
			s->icase = 1;
			break;
		case '1': case '2': case '3':
		case '4': case '5': case '6':
		case '7': case '8': case '9':
			if (gn)
				FUNC2(1,
"%lu: %s: more than one number or 'g' in substitute flags", linenum, fname);
			gn = 1;
			errno = 0;
			nval = FUNC5(p, &p, 10);
			if (errno == ERANGE || nval > INT_MAX)
				FUNC2(1,
"%lu: %s: overflow in the 'N' substitute flag", linenum, fname);
			s->n = nval;
			p--;
			break;
		case 'w':
			p++;
#ifdef HISTORIC_PRACTICE
			if (*p != ' ') {
				warnx("%lu: %s: space missing before w wfile", linenum, fname);
				return (p);
			}
#endif
			FUNC0();
			q = wfile;
			eq = wfile + sizeof(wfile) - 1;
			while (*p) {
				if (*p == '\n')
					break;
				if (q >= eq)
					FUNC1(1, "wfile too long");
				*q++ = *p++;
			}
			*q = '\0';
			if (q == wfile)
				FUNC2(1, "%lu: %s: no wfile specified", linenum, fname);
			s->wfile = FUNC4(wfile);
			if (!aflag && (s->wfd = FUNC3(wfile,
			    O_WRONLY|O_APPEND|O_CREAT|O_TRUNC,
			    DEFFILEMODE)) == -1)
				FUNC1(1, "%s", wfile);
			return (p);
		default:
			FUNC2(1, "%lu: %s: bad flag in substitute command: '%c'",
					linenum, fname, *p);
			break;
		}
		p++;
	}
}