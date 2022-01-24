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
 int NETMAP_BDG_ATTACH ; 
 int NETMAP_BDG_DELIF ; 
 int NETMAP_BDG_DETACH ; 
 int NETMAP_BDG_HOST ; 
 int NETMAP_BDG_LIST ; 
 int NETMAP_BDG_NEWIF ; 
 int NETMAP_BDG_POLLING_OFF ; 
 int NETMAP_BDG_POLLING_ON ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(int argc, char *argv[])
{
	int ch, nr_cmd = 0, nr_arg = 0;
	char *name = NULL, *nmr_config = NULL;
	int nr_arg2 = 0;

	while ((ch = FUNC3(argc, argv, "d:a:h:g:l:n:r:C:p:P:m:")) != -1) {
		if (ch != 'C' && ch != 'm')
			name = optarg; /* default */
		switch (ch) {
		default:
			FUNC2(stderr, "bad option %c %s", ch, optarg);
			FUNC5(-1);
			break;
		case 'd':
			nr_cmd = NETMAP_BDG_DETACH;
			break;
		case 'a':
			nr_cmd = NETMAP_BDG_ATTACH;
			break;
		case 'h':
			nr_cmd = NETMAP_BDG_ATTACH;
			nr_arg = NETMAP_BDG_HOST;
			break;
		case 'n':
			nr_cmd = NETMAP_BDG_NEWIF;
			break;
		case 'r':
			nr_cmd = NETMAP_BDG_DELIF;
			break;
		case 'g':
			nr_cmd = 0;
			break;
		case 'l':
			nr_cmd = NETMAP_BDG_LIST;
			break;
		case 'C':
			nmr_config = FUNC4(optarg);
			break;
		case 'p':
			nr_cmd = NETMAP_BDG_POLLING_ON;
			break;
		case 'P':
			nr_cmd = NETMAP_BDG_POLLING_OFF;
			break;
		case 'm':
			nr_arg2 = FUNC0(optarg);
			break;
		}
	}
	if (optind != argc) {
		// fprintf(stderr, "optind %d argc %d\n", optind, argc);
		FUNC5(-1);
	}
	if (argc == 1) {
		nr_cmd = NETMAP_BDG_LIST;
		name = NULL;
	}
	return FUNC1(name, nr_cmd, nr_arg, nmr_config, nr_arg2) ? 1 : 0;
}