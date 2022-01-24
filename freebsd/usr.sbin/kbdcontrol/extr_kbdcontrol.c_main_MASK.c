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
 int /*<<< orphan*/  KBADDKBD ; 
 int /*<<< orphan*/  KBRELKBD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char const*) ; 
 int hex ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char**,int*,float) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char **argv)
{
	const char	*optstring = "A:a:b:df:iKk:Fl:L:P:r:x";
	int		opt;

	/* Collect any -P arguments, regardless of where they appear. */
	while ((opt = FUNC2(argc, argv, optstring)) != -1) {
		if (opt == 'P')
			FUNC0(optarg);
		if (opt == '?')
			FUNC14();
	}

	optind = optreset = 1;
	while ((opt = FUNC2(argc, argv, optstring)) != -1)
		switch(opt) {
		case 'A':
		case 'a':
			FUNC5((opt == 'A')? KBRELKBD : KBADDKBD, optarg);
			break;
		case 'b':
			FUNC9(optarg);
			break;
		case 'd':
			FUNC7();
			break;
		case 'l':
			FUNC4(optarg, 0);
			break;
		case 'L':
			FUNC4(optarg, 1);
			break;
		case 'P':
			break;
		case 'f':
			FUNC10(optarg,
			    FUNC6(argc, argv, &optind, 'f'));
			break;
		case 'F':
			FUNC3();
			break;
		case 'i':
			FUNC13();
			break;
		case 'K':
			FUNC8();
			break;
		case 'k':
			FUNC11(optarg);
			break;
		case 'r':
			FUNC12(optarg);
			break;
		case 'x':
			hex = 1;
			break;
		default:
			FUNC14();
		}
	if ((optind != argc) || (argc == 1))
		FUNC14();
	FUNC1(0);
}