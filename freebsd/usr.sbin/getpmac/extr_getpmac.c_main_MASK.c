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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  mac_t ;

/* Variables and functions */
 int EX_DATAERR ; 
 int EX_OK ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char**) ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char *argv[])
{
	char *labellist, *string;
	mac_t label;
	pid_t pid;
	int ch, error, pid_set;

	pid_set = 0;
	pid = 0;
	labellist = NULL;
	while ((ch = FUNC3(argc, argv, "l:p:")) != -1) {
		switch (ch) {
		case 'l':
			if (labellist != NULL)
				FUNC13();
			labellist = argv[optind - 1];
			break;
		case 'p':
			if (pid_set)
				FUNC13();
			pid = FUNC0(argv[optind - 1]);
			pid_set = 1;
			break;
		default:
			FUNC13();
		}

	}

	argc -= optind;
	argv += optind;

	if (argc != 0)
		FUNC13();

	if (labellist != NULL)
		error = FUNC7(&label, labellist);
	else
		error = FUNC8(&label);
	if (error != 0) {
		FUNC10("mac_prepare");
		return (-1);
	}

	if (pid_set) {
		error = FUNC5(pid, label);
		if (error)
			FUNC10("mac_get_pid");
	} else {
		error = FUNC6(label);
		if (error)
			FUNC10("mac_get_proc");
	}
	if (error) {
		FUNC4(label);
		FUNC1 (-1);
	}
	error = FUNC9(label, &string);
	if (error != 0) {
		FUNC10("mac_to_text");
		FUNC1(EX_DATAERR);
	}

	if (FUNC12(string) > 0)
		FUNC11("%s\n", string);
		
	FUNC4(label);
	FUNC2(string);
	FUNC1(EX_OK);
}