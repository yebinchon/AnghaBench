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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/ * delim ; 
 int delimcnt ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,char const**,size_t,int /*<<< orphan*/ *) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC5 (char**) ; 
 int FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * tab ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	int ch, rval, seq;
	wchar_t *warg;
	const char *arg;
	size_t len;

	FUNC7(LC_CTYPE, "");

	seq = 0;
	while ((ch = FUNC2(argc, argv, "d:s")) != -1)
		switch(ch) {
		case 'd':
			arg = optarg;
			len = FUNC4(NULL, &arg, 0, NULL);
			if (len == (size_t)-1)
				FUNC0(1, "delimiters");
			warg = FUNC3((len + 1) * sizeof(*warg));
			if (warg == NULL)
				FUNC0(1, NULL);
			arg = optarg;
			len = FUNC4(warg, &arg, len + 1, NULL);
			if (len == (size_t)-1)
				FUNC0(1, "delimiters");
			delimcnt = FUNC8(delim = warg);
			break;
		case 's':
			seq = 1;
			break;
		case '?':
		default:
			FUNC9();
		}
	argc -= optind;
	argv += optind;

	if (*argv == NULL)
		FUNC9();
	if (!delim) {
		delimcnt = 1;
		delim = tab;
	}

	if (seq)
		rval = FUNC6(argv);
	else
		rval = FUNC5(argv);
	FUNC1(rval);
}