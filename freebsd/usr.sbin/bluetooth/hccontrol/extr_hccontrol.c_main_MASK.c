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
 int FUNC0 (char*,int,char**) ; 
 int FUNC1 (int,char**,char*) ; 
 int numeric_bdaddr ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int verbose ; 

int
FUNC3(int argc, char *argv[])
{
	char	*node = NULL;
	int	 n;

	/* Process command line arguments */
	while ((n = FUNC1(argc, argv, "n:Nvh")) != -1) {
		switch (n) {
		case 'n':
			node = optarg;
			break;

		case 'N':
			numeric_bdaddr = 1;
			break;

		case 'v':
			verbose = 1;
			break;

		case 'h':
		default:
			FUNC2();
		}
	}

	argc -= optind;
	argv += optind;

	if (*argv == NULL)
		FUNC2();

	n = FUNC0(node, argc, argv);

	return (n);
}