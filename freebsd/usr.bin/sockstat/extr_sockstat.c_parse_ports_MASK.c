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
 int INT_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/ * ports ; 

__attribute__((used)) static void
FUNC6(const char *portspec)
{
	const char *p, *q;
	int port, end;

	if (ports == NULL)
		if ((ports = FUNC1(65536 / INT_BIT, sizeof(int))) == NULL)
			FUNC3(1, "calloc()");
	p = portspec;
	while (*p != '\0') {
		if (!FUNC5(*p))
			FUNC4(1, "syntax error in port range");
		for (q = p; *q != '\0' && FUNC5(*q); ++q)
			/* nothing */ ;
		for (port = 0; p < q; ++p)
			port = port * 10 + FUNC2(*p);
		if (port < 0 || port > 65535)
			FUNC4(1, "invalid port number");
		FUNC0(port);
		switch (*p) {
		case '-':
			++p;
			break;
		case ',':
			++p;
			/* fall through */
		case '\0':
		default:
			continue;
		}
		for (q = p; *q != '\0' && FUNC5(*q); ++q)
			/* nothing */ ;
		for (end = 0; p < q; ++p)
			end = end * 10 + FUNC2(*p);
		if (end < port || end > 65535)
			FUNC4(1, "invalid port number");
		while (port++ < end)
			FUNC0(port);
		if (*p == ',')
			++p;
	}
}