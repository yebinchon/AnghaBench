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
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,char*,int*,char**) ; 
 int FUNC4 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 int FUNC8 (char*,char*,char**) ; 
 int FUNC9 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int
FUNC11(int argc, char *argv[])
{
	char *domainname, *hostname = NULL, *inmap, *master;
	int order, c, r;
	time_t torder;

	FUNC7(&domainname);

	while ((c = FUNC4(argc, argv, "h:d:")) != -1)
		switch (c) {
		case 'd':
			domainname = optarg;
			break;
		case 'h':
			hostname = optarg;
			break;
		default:
			FUNC6();
			/*NOTREACHED*/
		}

	if (optind + 1 != argc)
		FUNC6();
	inmap = argv[optind];

	if (hostname != NULL) {
		r = FUNC3(domainname, inmap, hostname,
		    &order, &master);
	} else {
		r = FUNC9(domainname, inmap, &order);
		if (r == 0)
			r = FUNC8(domainname, inmap, &master);
	}

	if (r != 0)
		FUNC1(1, "no such map %s: reason: %s",
		    inmap, FUNC10(r));

	torder = order;
	FUNC5("Map %s has order number %lld. %s", inmap,
	    (long long)order, FUNC0(&torder));
	FUNC5("The master server is %s.\n", master);

	FUNC2(0);
}