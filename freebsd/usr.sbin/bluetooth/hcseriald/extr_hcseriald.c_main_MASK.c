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
typedef  int speed_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FILENAME_MAX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 int /*<<< orphan*/  LOG_USER ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (int,char**,char*) ; 
 int FUNC9 () ; 
 char* hcseriald ; 
 int /*<<< orphan*/  FUNC10 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int
FUNC20(int argc, char *argv[])
{
	char			*device = NULL, *name = NULL;
	speed_t			 speed = 115200;
	int			 n, detach = 1;
	char			 p[FILENAME_MAX];
	FILE			*f = NULL;
	struct sigaction	 sa;

	/* Process command line arguments */
	while ((n = FUNC8(argc, argv, "df:n:s:h")) != -1) {
		switch (n) {
		case 'd':
			detach = 0;
			break;

		case 'f':
			device = optarg;
			break;

		case 'n':
			name = optarg;
			break;

		case 's':
			speed = FUNC0(optarg);
			if (speed < 0)
				FUNC19(argv[0]);
			break;

		case 'h':
		default:
			FUNC19(argv[0]);
			break;
		}
	}

	if (device == NULL || name == NULL)
		FUNC19(argv[0]);

	FUNC12(hcseriald, LOG_PID | LOG_NDELAY, LOG_USER);

	/* Open device */
	n = FUNC11(device, speed, name);

	if (detach && FUNC3(0, 0) < 0) {
		FUNC17(LOG_ERR, "Could not daemon(0, 0). %s (%d)",
			FUNC16(errno), errno);
		FUNC4(1);
	}

	/* Write PID file */
	FUNC15(p, sizeof(p), "/var/run/%s.%s.pid", hcseriald, name);
	f = FUNC6(p, "w");
	if (f == NULL) {
		FUNC17(LOG_ERR, "Could not fopen(%s). %s (%d)",
			p, FUNC16(errno), errno);
		FUNC4(1);
	}
	FUNC7(f, "%d", FUNC9());
	FUNC5(f);

	/* Install signal handler */
	FUNC10(&sa, 0, sizeof(sa));
	sa.sa_handler = sighandler;

	if (FUNC14(SIGTERM, &sa, NULL) < 0) {
		FUNC17(LOG_ERR, "Could not sigaction(SIGTERM). %s (%d)",
			FUNC16(errno), errno);
		FUNC4(1);
	}

	if (FUNC14(SIGHUP, &sa, NULL) < 0) {
		FUNC17(LOG_ERR, "Could not sigaction(SIGHUP). %s (%d)",
			FUNC16(errno), errno);
		FUNC4(1);
	}

	if (FUNC14(SIGINT, &sa, NULL) < 0) {
		FUNC17(LOG_ERR, "Could not sigaction(SIGINT). %s (%d)",
			FUNC16(errno), errno);
		FUNC4(1);
	}

	/* Keep running */
	while (!done)
		FUNC13(0, NULL, NULL, NULL, NULL);

	/* Remove PID file and close device */
	FUNC18(p);
	FUNC1(n);
	FUNC2();

	return (0);
}