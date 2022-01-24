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
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char**) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	char *labellist, *string;
	mac_t label;
	int ch, hflag;
	int error, i;

	labellist = NULL;
	hflag = 0;
	while ((ch = FUNC2(argc, argv, "hl:")) != -1) {
		switch (ch) {
		case 'h':
			hflag = 1;
			break;
		case 'l':
			if (labellist != NULL)
				FUNC11();
			labellist = argv[optind - 1];
			break;
		default:
			FUNC11();
		}

	}

	for (i = optind; i < argc; i++) {
		if (labellist != NULL)
			error = FUNC6(&label, labellist);
		else
			error = FUNC7(&label);

		if (error != 0) {
			FUNC9("mac_prepare");
			return (-1);
		}

		if (hflag)
			error = FUNC5(argv[i], label);
		else
			error = FUNC4(argv[i], label);
		if (error) {
			FUNC9(argv[i]);
			FUNC3(label);
			continue;
		}

		error = FUNC8(label, &string);
		if (error != 0)
			FUNC9("mac_to_text");
		else {
			FUNC10("%s: %s\n", argv[i], string);
			FUNC1(string);
		}
		FUNC3(label);
	}

	FUNC0(EX_OK);
}