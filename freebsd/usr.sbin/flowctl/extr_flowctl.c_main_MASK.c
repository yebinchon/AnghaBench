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
typedef  int /*<<< orphan*/  sname ;

/* Variables and functions */
 int NG_NODESIZ ; 
 scalar_t__ NG_PATHSIZ ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int SORCVBUF_SIZE ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* ng_path ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 scalar_t__ FUNC12 (char*) ; 

int
FUNC13(int argc, char **argv)
{
	int c;
	char sname[NG_NODESIZ];
	int rcvbuf = SORCVBUF_SIZE;

	/* parse options */
	while ((c = FUNC7(argc, argv, "d:")) != -1) {
		switch (c) {
		case 'd':	/* set libnetgraph debug level. */
			FUNC1(FUNC2(optarg));
			break;
		}
	}

	argc -= optind;
	argv += optind;
	ng_path = argv[0];
	if (ng_path == NULL || (FUNC12(ng_path) > NG_PATHSIZ))
		FUNC9();
	argc--;
	argv++;

	/* create control socket. */
	FUNC11(sname, sizeof(sname), "flowctl%i", FUNC8());

	if (FUNC0(sname, &cs, NULL) == -1)
		FUNC4(1, "NgMkSockNode");

	/* set receive buffer size */
	if (FUNC10(cs, SOL_SOCKET, SO_RCVBUF, &rcvbuf, sizeof(int)) == -1)
		FUNC4(1, "setsockopt(SOL_SOCKET, SO_RCVBUF)");

	/* parse and execute command */
	FUNC5(argc, argv);

	FUNC3(cs);
	
	FUNC6(0);
}