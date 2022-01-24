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
typedef  int /*<<< orphan*/  uint32_t ;
struct mod_regs {char* name; int /*<<< orphan*/  ri; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(int argc, const char *argv[], const uint32_t *regs,
    const struct mod_regs *modtab, int nmodules)
{
	int i, j, match;

	for (i = 0; i < argc; i++) {
		for (j = 0; j < nmodules; j++) {
			if (!FUNC2(argv[i], modtab[j].name))
				break;
		}

		if (j == nmodules) {
			FUNC3("invalid register block \"%s\"", argv[i]);
			FUNC1(stderr, "\nAvailable blocks:");
			for ( ; nmodules; nmodules--, modtab++)
				FUNC1(stderr, " %s", modtab->name);
			FUNC1(stderr, "\n");
			return (EINVAL);
		}
	}

	for ( ; nmodules; nmodules--, modtab++) {

		match = argc == 0 ? 1 : 0;
		for (i = 0; !match && i < argc; i++) {
			if (!FUNC2(argv[i], modtab->name))
				match = 1;
		}

		if (match)
			FUNC0(modtab->ri, regs);
	}

	return (0);
}