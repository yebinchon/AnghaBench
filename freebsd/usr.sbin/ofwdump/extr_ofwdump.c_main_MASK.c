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
 int EX_OK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{
	int opt, i, fd;
	int aflag, pflag, rflag, Rflag, Sflag;
	char *Parg;

	aflag = pflag = rflag = Rflag = Sflag = 0;
	Parg = NULL;
	while ((opt = FUNC0(argc, argv, "-aprP:RS")) != -1) {
		if (opt == '-')
			break;
		switch (opt) {
		case 'a':
			aflag = 1;
			rflag = 1;
			break;
		case 'p':
			if (Parg != NULL)
				FUNC4();
			pflag = 1;
			break;
		case 'r':
			rflag = 1;
			break;
		case 'P':
			if (pflag)
				FUNC4();
			pflag = 1;
			Parg = optarg;
			break;
		case 'R':
			if (Sflag)
				FUNC4();
			Rflag = 1;
			break;
		case 'S':
			if (Rflag)
				FUNC4();
			Sflag = 1;
			break;
		case '?':
		default:
			FUNC4();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	fd = FUNC3(O_RDONLY);
	if (aflag) {
		if (argc != 0)
			FUNC4();
		FUNC2(fd, NULL, rflag, pflag, Parg, Rflag, Sflag);
	} else {
		/*
		 * For the sake of scripts, usage() is not called here if
		 * argc == 0.
		 */
		for (i = 0; i < argc; i++)
			FUNC2(fd, argv[i], rflag, pflag, Parg, Rflag, Sflag);
	}
	FUNC1(fd);
	return (EX_OK);
}