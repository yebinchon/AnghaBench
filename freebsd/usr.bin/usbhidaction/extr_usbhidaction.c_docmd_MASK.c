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
struct command {char* action; char const* name; } ;

/* Variables and functions */
 int SIZE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int FUNC5 (char*,char**,int) ; 
 int FUNC6 (char*) ; 
 int verbose ; 

void
FUNC7(struct command *cmd, int value, const char *hid, int argc, char **argv)
{
	char cmdbuf[SIZE], *p, *q;
	size_t len;
	int n, r;

	for (p = cmd->action, q = cmdbuf; *p && q < &cmdbuf[SIZE-1]; ) {
		if (*p == '$') {
			p++;
			len = &cmdbuf[SIZE-1] - q;
			if (FUNC0(*p)) {
				n = FUNC5(p, &p, 10) - 1;
				if (n >= 0 && n < argc) {
					FUNC4(q, argv[n], len);
					q += FUNC3(q);
				}
			} else if (*p == 'V') {
				p++;
				FUNC2(q, len, "%d", value);
				q += FUNC3(q);
			} else if (*p == 'N') {
				p++;
				FUNC4(q, cmd->name, len);
				q += FUNC3(q);
			} else if (*p == 'H') {
				p++;
				FUNC4(q, hid, len);
				q += FUNC3(q);
			} else if (*p) {
				*q++ = *p++;
			}
		} else {
			*q++ = *p++;
		}
	}
	*q = 0;

	if (verbose)
		FUNC1("system '%s'\n", cmdbuf);
	r = FUNC6(cmdbuf);
	if (verbose > 1 && r)
		FUNC1("return code = 0x%x\n", r);
}