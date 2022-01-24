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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  StringList ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int PMASK ; 
 int PROTOMAX ; 
 unsigned long ULONG_MAX ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (char const*,size_t,char**,char*) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char*) ; 
 char* FUNC13 (char**,char*) ; 
 unsigned long FUNC14 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,size_t,...) ; 

__attribute__((used)) static StringList ***
FUNC16(const char *fname, StringList *sl)
{
	ssize_t len;
	size_t linecap, line, pindex;
	FILE *fp;
	StringList ***svc, *s;
	char *p, *ep;

	if ((fp = FUNC3(fname, "r")) == NULL)
		FUNC1(1, "Cannot open `%s'", fname);

	line = linecap = 0;
	if ((svc = FUNC0(PMASK + 1, sizeof(StringList **))) == NULL)
		FUNC1(1, "Cannot allocate %zu bytes", (size_t)(PMASK + 1));

	p = NULL;
	while ((len = FUNC4(&p, &linecap, fp)) != -1) {
		char	*name, *port, *proto, *aliases, *cp, *alias;
		unsigned long pnum;

		line++;

		if (len == 0)
			continue;

		if (p[len - 1] == '\n')
			p[len - 1] = '\0';

		for (cp = p; *cp && FUNC7((unsigned char)*cp); cp++)
			continue;

		if (*cp == '\0' || *cp == '#')
			continue;

		if ((name = FUNC6(fname, line, &cp, "name")) == NULL)
			continue;

		if ((port = FUNC6(fname, line, &cp, "port")) == NULL)
			continue;

		if (cp) {
			for (aliases = cp; *cp && *cp != '#'; cp++)
				continue;

			if (*cp)
				*cp = '\0';
		} else
			aliases = NULL;

		proto = FUNC11(port, '/');
		if (proto == NULL || proto[1] == '\0') {
			FUNC15("%s, %zu: no protocol found", fname, line);
			continue;
		}
		*proto++ = '\0';

		errno = 0;
		pnum = FUNC14(port, &ep, 0);
		if (*port == '\0' || *ep != '\0') {
			FUNC15("%s, %zu: invalid port `%s'", fname, line, port);
			continue;
		}
		if ((errno == ERANGE && pnum == ULONG_MAX) || pnum > PMASK) {
			FUNC15("%s, %zu: port too big `%s'", fname, line, port);
			continue;
		}

		if (svc[pnum] == NULL) {
			svc[pnum] = FUNC0(PROTOMAX, sizeof(StringList *));
			if (svc[pnum] == NULL)
				FUNC1(1, "Cannot allocate %zu bytes",
				    (size_t)PROTOMAX);
		}

		pindex = FUNC5(sl, proto);
		if (svc[pnum][pindex] == NULL)
			s = svc[pnum][pindex] = FUNC10();
		else
			s = svc[pnum][pindex];

		/* build list of aliases */
		if (FUNC9(s, name) == NULL) {
			char *p2;

			if ((p2 = FUNC12(name)) == NULL)
				FUNC1(1, "Cannot copy string");
			(void)FUNC8(s, p2);
		}

		if (aliases) {
			while ((alias = FUNC13(&aliases, " \t")) != NULL) {
				if (alias[0] == '\0')
					continue;
				if (FUNC9(s, alias) == NULL) {
					char *p2;

					if ((p2 = FUNC12(alias)) == NULL)
						FUNC1(1, "Cannot copy string");
					(void)FUNC8(s, p2);
				}
			}
		}
	}
	(void)FUNC2(fp);
	return svc;
}