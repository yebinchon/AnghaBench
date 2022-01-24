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
typedef  int uint64_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  oid ;
typedef  int /*<<< orphan*/  ndebug ;
typedef  int /*<<< orphan*/  debug ;
struct TYPE_3__ {int bit; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* ATH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 TYPE_1__* flags ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char const) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,int*,size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char *argv[])
{
	const char *ifname;
	const char *cp, *tp;
	const char *sep;
	int c, op, i;
	uint64_t debug, ndebug;
	size_t debuglen;
	char oid[256];

	ifname = FUNC2("ATH");
	if (ifname == NULL)
		ifname = ATH_DEFAULT;
	progname = argv[0];
	if (argc > 1) {
		if (FUNC8(argv[1], "-i") == 0) {
			if (argc < 2)
				FUNC1(1, "missing interface name for -i option");
			ifname = argv[2];
			if (FUNC9(ifname, "ath", 3) != 0)
				FUNC1(2, "huh, this is for ath devices?");
			argc -= 2, argv += 2;
		} else if (FUNC8(argv[1], "-?") == 0)
			FUNC12();
	}

#ifdef __linux__
	FUNC7(oid, sizeof(oid), "dev.%s.debug", ifname);
#else
	snprintf(oid, sizeof(oid), "dev.ath.%s.debug", ifname+3);
#endif
	debuglen = sizeof(debug);
	if (FUNC11(oid, &debug, &debuglen, NULL, 0) < 0)
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
			bit = FUNC3(cp, tp-cp);
			if (op < 0)
				ndebug &= ~bit;
			else if (op > 0)
				ndebug |= bit;
			else {
				if (bit == 0) {
					if (FUNC4(*cp))
						bit = FUNC10(cp, NULL, 0);
					else
						FUNC1(1, "unknown flag %.*s",
							(int) (tp-cp), cp);
				}
				ndebug = bit;
			}
		} while (*(cp = tp) != '\0');
	}
	if (debug != ndebug) {
		FUNC6("%s: 0x%llx => ", oid, (long long) debug);
		if (FUNC11(oid, NULL, NULL, &ndebug, sizeof(ndebug)) < 0)
			FUNC0(1, "sysctl-set(%s)", oid);
		FUNC6("0x%llx", (long long) ndebug);
		debug = ndebug;
	} else
		FUNC6("%s: 0x%llx", oid, (long long) debug);
	sep = "<";
	for (i = 0; i < FUNC5(flags); i++)
		if (debug & flags[i].bit) {
			FUNC6("%s%s", sep, flags[i].name);
			sep = ",";
		}
	FUNC6("%s\n", *sep != '<' ? ">" : "");
	return 0;
}