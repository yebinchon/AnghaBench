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
 int /*<<< orphan*/  M_NETGRAPH_PARSE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 

char *
FUNC8(const char *s, int *startp, int *lenp, int *slenp)
{
	char *cbuf, *p;
	int start, off;
	int slen;

	while (FUNC2(s[*startp]))
		(*startp)++;
	start = *startp;
	if (s[*startp] != '"')
		return (NULL);
	cbuf = FUNC4(FUNC6(s + start), M_NETGRAPH_PARSE, M_NOWAIT);
	if (cbuf == NULL)
		return (NULL);
	FUNC5(cbuf, s + start + 1);
	for (slen = 0, off = 1, p = cbuf; *p != '\0'; slen++, off++, p++) {
		if (*p == '"') {
			*p = '\0';
			*lenp = off + 1;
			if (slenp != NULL)
				*slenp = slen;
			return (cbuf);
		} else if (p[0] == '\\' && p[1] != '\0') {
			int x, k;
			char *v;

			FUNC5(p, p + 1);
			v = p;
			switch (*p) {
			case 't':
				*v = '\t';
				off++;
				continue;
			case 'n':
				*v = '\n';
				off++;
				continue;
			case 'r':
				*v = '\r';
				off++;
				continue;
			case 'v':
				*v =  '\v';
				off++;
				continue;
			case 'f':
				*v =  '\f';
				off++;
				continue;
			case '"':
				*v =  '"';
				off++;
				continue;
			case '0': case '1': case '2': case '3':
			case '4': case '5': case '6': case '7':
				for (x = k = 0;
				    k < 3 && *v >= '0' && *v <= '7'; v++) {
					x = (x << 3) + (*v - '0');
					off++;
				}
				*--v = (char)x;
				break;
			case 'x':
				for (v++, x = k = 0;
				    k < 2 && FUNC3(*v); v++) {
					x = (x << 4) + (FUNC1(*v) ?
					      (*v - '0') :
					      (FUNC7(*v) - 'a' + 10));
					off++;
				}
				*--v = (char)x;
				break;
			default:
				continue;
			}
			FUNC5(p, v);
		}
	}
	FUNC0(cbuf, M_NETGRAPH_PARSE);
	return (NULL);		/* no closing quote */
}