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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 char* dvname ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	dvname = FUNC1("CFI");
	if (dvname == NULL)
		dvname = "/dev/cfi0";
	progname = argv[0];
	if (argc > 1) {
		if (FUNC9(argv[1], "-f") == 0) {
			if (argc < 2)
				FUNC0(1, "missing device name for -f option");
			dvname = argv[2];
			argc -= 2, argv += 2;
		} else if (FUNC9(argv[1], "-?") == 0)
			FUNC11();
	}
	for (; argc > 1; argc--, argv++) {
		if (FUNC8(argv[1], "fact") == 0) {
			FUNC5("0x%llx\n", (unsigned long long) FUNC2());
		} else if (FUNC8(argv[1], "oem") == 0) {
			FUNC5("0x%llx\n", (unsigned long long) FUNC3());
		} else if (FUNC8(argv[1], "woem") == 0) {
			if (argc < 2)
				FUNC0(1, "missing value for woem");
			FUNC6((uint64_t) FUNC10(argv[2], NULL, 0));
			argc--, argv++;
		} else if (FUNC8(argv[1], "plr") == 0) {
			FUNC5("0x%x\n", FUNC4());
		} else if (FUNC8(argv[1], "wplr") == 0) {
			FUNC7();
		} else
			FUNC11();
	}
}