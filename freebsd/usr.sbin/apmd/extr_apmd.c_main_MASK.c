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
 int APM_CTL_DEVICEFILE ; 
 int APM_NORM_DEVICEFILE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int LOG_NDELAY ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  NICE_INCR ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int apmctl_fd ; 
 int /*<<< orphan*/  apmd_configfile ; 
 int apmnorm_fd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_level ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int* signal_fd ; 
 int soft_power_state_change ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int ac, char* av[])
{
	int	ch;
	int	daemonize = 1;
	char	*prog;
	int	logopt = LOG_NDELAY | LOG_PID;

	while ((ch = FUNC5(ac, av, "df:sv")) != -1) {
		switch (ch) {
		case 'd':
			daemonize = 0;
			debug_level++;
			break;
		case 'f':
			apmd_configfile = optarg;
			break;
		case 's':
			soft_power_state_change = 1;
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC1(1, "unknown option `%c'", ch);
		}
	}

	if (daemonize)
		FUNC0(0, 0);

#ifdef NICE_INCR
	nice(NICE_INCR);
#endif

	if (!daemonize)
		logopt |= LOG_PERROR;

	prog = FUNC11(av[0], '/');
	FUNC8(prog ? prog+1 : av[0], logopt, LOG_DAEMON);

	FUNC12(LOG_NOTICE, "start");

	if (FUNC9(signal_fd) < 0)
		FUNC1(1, "pipe");
	if (FUNC4(signal_fd[0], F_SETFL, O_NONBLOCK) < 0)
		FUNC1(1, "fcntl");

	if ((apmnorm_fd = FUNC7(APM_NORM_DEVICEFILE, O_RDWR)) == -1) {
		FUNC1(1, "cannot open device file `%s'", APM_NORM_DEVICEFILE);
	}

	if (FUNC4(apmnorm_fd, F_SETFD, 1) == -1) {
		FUNC1(1, "cannot set close-on-exec flag for device file '%s'", APM_NORM_DEVICEFILE);
	}

	if ((apmctl_fd = FUNC7(APM_CTL_DEVICEFILE, O_RDWR)) == -1) {
		FUNC1(1, "cannot open device file `%s'", APM_CTL_DEVICEFILE);
	}

	if (FUNC4(apmctl_fd, F_SETFD, 1) == -1) {
		FUNC1(1, "cannot set close-on-exec flag for device file '%s'", APM_CTL_DEVICEFILE);
	}

	FUNC10();
	FUNC13();
	FUNC2();
	FUNC3(EXIT_SUCCESS);
}