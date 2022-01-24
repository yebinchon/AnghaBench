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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char**) ; 
 int nflag ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  repeat ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,char**) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int tflag ; 
 int /*<<< orphan*/  thiszone ; 
 int /*<<< orphan*/  FUNC21 () ; 

int
FUNC22(int argc, char **argv)
{
	int ch, mode = 0;
	char *arg = NULL;

	pid = FUNC9();
	thiszone = FUNC10(0);
	while ((ch = FUNC8(argc, argv, "acd:f:Ii:nprstA:HPR")) != -1)
		switch (ch) {
		case 'a':
		case 'c':
		case 'p':
		case 'r':
		case 'H':
		case 'P':
		case 'R':
		case 's':
		case 'I':
			if (mode) {
				FUNC21();
				/*NOTREACHED*/
			}
			mode = ch;
			arg = NULL;
			break;
		case 'f':
			FUNC4(FUNC5(optarg) ? 1 : 0);
		case 'd':
		case 'i':
			if (mode) {
				FUNC21();
				/*NOTREACHED*/
			}
			mode = ch;
			arg = optarg;
			break;
		case 'n':
			nflag = 1;
			break;
		case 't':
			tflag = 1;
			break;
		case 'A':
			if (mode) {
				FUNC21();
				/*NOTREACHED*/
			}
			mode = 'a';
			repeat = FUNC0(optarg);
			if (repeat < 0) {
				FUNC21();
				/*NOTREACHED*/
			}
			break;
		default:
			FUNC21();
		}

	argc -= optind;
	argv += optind;

	switch (mode) {
	case 'a':
	case 'c':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC2(0, mode == 'c');
		break;
	case 'd':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC1(arg);
		break;
	case 'I':
#ifdef SIOCSDEFIFACE_IN6	/* XXX: check SIOCGDEFIFACE_IN6 as well? */
		if (argc > 1) {
			usage();
			/*NOTREACHED*/
		} else if (argc == 1) {
			if (strcmp(*argv, "delete") == 0 ||
			    if_nametoindex(*argv))
				setdefif(*argv);
			else
				errx(1, "invalid interface %s", *argv);
		}
		getdefif(); /* always call it to print the result */
		break;
#else
		FUNC3(1, "not supported yet");
		/*NOTREACHED*/
#endif
	case 'p':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC15();
		break;
	case 'i':
		FUNC13(arg, argc, argv);
		break;
	case 'r':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC17();
		break;
	case 's':
		if (argc < 2 || argc > 4)
			FUNC21();
		FUNC4(FUNC18(argc, argv) ? 1 : 0);
	case 'H':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC11();
		break;
	case 'P':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC14();
		break;
	case 'R':
		if (argc != 0) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC16();
		break;
	case 0:
		if (argc != 1) {
			FUNC21();
			/*NOTREACHED*/
		}
		FUNC6(argv[0]);
		break;
	}
	FUNC4(0);
}