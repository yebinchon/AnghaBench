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
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC6 (int) ; 
 long FUNC7 (char*,char**,int) ; 
 int FUNC8 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(int argc, char *argv[])
{
	long fib = 0;
	int ch;
	char *ep;
	int	numfibs;
	size_t intsize = sizeof(int);

        if (FUNC8("net.fibs", &numfibs, &intsize, NULL, 0) == -1)
		FUNC2(1, "Multiple FIBS not supported");
	if (argc < 2)
		FUNC9();
	ep = argv[1];
	/*
	 * convert -N or N to -FN. (N is a number)
	 */
	if (ep[0]== '-' && FUNC5((unsigned char)ep[1]))
		ep++;
	if (FUNC5((unsigned char)*ep))
               if (FUNC0(&argv[1], "-F%s", ep) < 0)
                        FUNC1(1, "asprintf");

	while ((ch = FUNC4(argc, argv, "F:")) != -1) {
		switch (ch) {
		case 'F':
			errno = 0;
			fib = FUNC7(optarg, &ep, 10);
			if (ep == optarg || *ep != '\0' || errno ||
			    fib < 0 || fib >= numfibs)
				FUNC2(1, "%s: invalid FIB (max %d)",
				    optarg, numfibs - 1);
			break;
		default:
			FUNC9();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC9();

	errno = 0;
	if (FUNC6((int)fib))
		FUNC10("setfib");
	FUNC3(*argv, argv);
	FUNC1(errno == ENOENT ? 127 : 126, "%s", *argv);
}