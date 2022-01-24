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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* configfile ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  policyhead ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(int argc, char *argv[])
{
	FUNC0(&policyhead);

	if (argc == 1 || FUNC9(argv[1], "show") == 0) {
		FUNC6();
		FUNC3();
	} else if (FUNC9(argv[1], "add") == 0) {
		if (argc < 5)
			FUNC10();
		FUNC1(argv[2], argv[3], argv[4]);
	} else if (FUNC9(argv[1], "delete") == 0) {
		if (argc < 3)
			FUNC10();
		FUNC2(argv[2]);
	} else if (FUNC9(argv[1], "flush") == 0) {
		FUNC6();
		FUNC5();
	} else if (FUNC9(argv[1], "install") == 0) {
		if (argc < 3)
			FUNC10();
		configfile = argv[2];
		FUNC7(configfile);
		FUNC8();
	} else
		FUNC10();

	FUNC4(0);
}