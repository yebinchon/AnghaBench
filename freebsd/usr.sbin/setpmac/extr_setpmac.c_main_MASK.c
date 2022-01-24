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
typedef  int /*<<< orphan*/  mac_t ;

/* Variables and functions */
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	const char *shell;
	mac_t label;
	int error;


	if (argc < 3)
		FUNC8();

	error = FUNC5(&label, argv[1]);
	if (error != 0) {
		FUNC7("mac_from_text");
		return (-1);
	}

	error = FUNC6(label);
	if (error != 0) {
		FUNC7(argv[1]);
		return (-1);
	}

	FUNC4(label);

	if (argc >= 3) {
		FUNC2(argv[2], argv + 2);
		FUNC0(1, "%s", argv[2]);
	} else {
		if (!(shell = FUNC3("SHELL")))
			shell = _PATH_BSHELL;
		FUNC1(shell, shell, "-i", (char *)NULL);
		FUNC0(1, "%s", shell);
	}
	/* NOTREACHED */
}