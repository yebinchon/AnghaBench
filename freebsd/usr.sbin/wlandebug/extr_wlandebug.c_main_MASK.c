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
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 TYPE_1__* flags ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,int*,size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	const char *cp, *tp;
	const char *sep;
	int op, i;
	u_int32_t debug, ndebug;
	size_t debuglen;
	char oid[256];

	progname = argv[0];
	FUNC7(oid, sizeof(oid), "wlan0");
	if (argc > 1) {
		if (FUNC8(argv[1], "-d") == 0) {
			FUNC7(oid, sizeof(oid), NULL);
			argc -= 1, argv += 1;
		} else if (FUNC8(argv[1], "-i") == 0) {
			if (argc <= 2)
				FUNC2(1, "missing interface name for -i option");
			FUNC3(oid, sizeof(oid), argv[2]);
			argc -= 2, argv += 2;
		} else if (FUNC8(argv[1], "-?") == 0)
			FUNC11();
	}

	debuglen = sizeof(debug);
	if (FUNC10(oid, &debug, &debuglen, NULL, 0) < 0)
		FUNC1(1, "sysctl-get(%s)", oid);
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
			bit = FUNC4(cp, tp-cp);
			if (op < 0)
				ndebug &= ~bit;
			else if (op > 0)
				ndebug |= bit;
			else {
				if (bit == 0) {
					int c = *cp;
					if (FUNC5(c))
						bit = FUNC9(cp, NULL, 0);
					else
						FUNC2(1, "unknown flag %.*s",
							(int)(tp-cp), cp);
				}
				ndebug = bit;
			}
		} while (*(cp = tp) != '\0');
	}
	if (debug != ndebug) {
		FUNC6("%s: 0x%x => ", oid, debug);
		if (FUNC10(oid, NULL, NULL, &ndebug, sizeof(ndebug)) < 0)
			FUNC1(1, "sysctl-set(%s)", oid);
		FUNC6("0x%x", ndebug);
		debug = ndebug;
	} else
		FUNC6("%s: 0x%x", oid, debug);
	sep = "<";
	for (i = 0; i < FUNC0(flags); i++)
		if (debug & flags[i].bit) {
			FUNC6("%s%s", sep, flags[i].name);
			sep = ",";
		}
	FUNC6("%s\n", *sep != '<' ? ">" : "");
	return 0;
}