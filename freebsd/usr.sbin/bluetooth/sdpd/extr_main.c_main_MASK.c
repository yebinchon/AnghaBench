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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  server_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SDPD ; 
 char* SDP_LOCAL_PATH ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ done ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char *argv[])
{
	server_t		 server;
	char const		*control = SDP_LOCAL_PATH;
	char const		*user = "nobody", *group = "nobody";
	int32_t			 detach = 1, opt;
	struct sigaction	 sa;

	while ((opt = FUNC3(argc, argv, "c:dg:hu:")) != -1) {
		switch (opt) {
		case 'c': /* control */
			control = optarg;
			break;

		case 'd': /* do not detach */
			detach = 0;
			break;

		case 'g': /* group */
			group = optarg;
			break;

		case 'u': /* user */
			user = optarg;
			break;

		case 'h':
		default:
			FUNC13();
			/* NOT REACHED */
		}
	}

	FUNC6(SDPD, !detach);

	/* Become daemon if required */
	if (detach && FUNC0(0, 0) < 0) {
		FUNC5("Could not become daemon. %s (%d)",
			FUNC12(errno), errno);
		FUNC2(1);
	}

	/* Set signal handlers */
	FUNC7(&sa, 0, sizeof(sa));
	sa.sa_handler = sighandler;

	if (FUNC11(SIGTERM, &sa, NULL) < 0 ||
	    FUNC11(SIGHUP,  &sa, NULL) < 0 ||
	    FUNC11(SIGINT,  &sa, NULL) < 0) {
		FUNC5("Could not install signal handlers. %s (%d)",
			FUNC12(errno), errno); 
		FUNC2(1);
	}

	sa.sa_handler = SIG_IGN;
	if (FUNC11(SIGPIPE, &sa, NULL) < 0) {
		FUNC5("Could not install signal handlers. %s (%d)",
			FUNC12(errno), errno); 
		FUNC2(1);
	}

	/* Initialize server */
	if (FUNC9(&server, control) < 0)
		FUNC2(1);

	if ((user != NULL || group != NULL) && FUNC1(user, group) < 0)
		FUNC2(1);

	for (done = 0; !done; ) {
		if (FUNC8(&server) != 0)
			done ++;
	}

	FUNC10(&server);
	FUNC4();

	return (0);
}