#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  oid ;
typedef  int /*<<< orphan*/  ndebug ;
typedef  int /*<<< orphan*/  debug ;
struct TYPE_3__ {int bit; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 TYPE_1__* flags ; 
 int FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,int*,size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	const char *ifname = "mwl0";
	const char *cp, *tp;
	const char *sep;
	int c, op, i;
	u_int32_t debug, ndebug;
	size_t debuglen;
	char oid[256];

	progname = argv[0];
	if (argc > 1) {
		if (FUNC7(argv[1], "-i") == 0) {
			if (argc < 2)
				FUNC1(1, "missing interface name for -i option");
			ifname = argv[2];
			if (FUNC8(ifname, "mv", 2) != 0)
				FUNC1(2, "huh, this is for mv devices?");
			argc -= 2, argv += 2;
		} else if (FUNC7(argv[1], "-?") == 0)
			FUNC11();
	}

	FUNC6(oid, sizeof(oid), "dev.mwl.%s.debug", ifname+3);
	debuglen = sizeof(debug);
	if (FUNC10(oid, &debug, &debuglen, NULL, 0) < 0)
		FUNC0(1, "sysctl-get(%s)", oid);
	ndebug = debug;
	for (; argc > 1; argc--, argv++) {
		cp = argv[1];
		do {
			u_int bit;

			if (*cp == '-') {
				cp++;
				op = -1;
			} else if (*cp == '+') {
				cp++;
				op = 1;
			} else
				op = 0;
			for (tp = cp; *tp != '\0' && *tp != '+' && *tp != '-';)
				tp++;
			bit = FUNC2(cp, tp-cp);
			if (op < 0)
				ndebug &= ~bit;
			else if (op > 0)
				ndebug |= bit;
			else {
				if (bit == 0) {
					c = *cp;
					if (FUNC3(c))
						bit = FUNC9(cp, NULL, 0);
					else
						FUNC1(1, "unknown flag %.*s",
							(int)(tp-cp), cp);
				}
				ndebug = bit;
			}
		} while (*(cp = tp) != '\0');
	}
	if (debug != ndebug) {
		FUNC5("%s: 0x%x => ", oid, debug);
		if (FUNC10(oid, NULL, NULL, &ndebug, sizeof(ndebug)) < 0)
			FUNC0(1, "sysctl-set(%s)", oid);
		FUNC5("0x%x", ndebug);
		debug = ndebug;
	} else
		FUNC5("%s: 0x%x", oid, debug);
	sep = "<";
	for (i = 0; i < FUNC4(flags); i++)
		if (debug & flags[i].bit) {
			FUNC5("%s%s", sep, flags[i].name);
			sep = ",";
		}
	FUNC5("%s\n", *sep != '<' ? ">" : "");
	return 0;
}