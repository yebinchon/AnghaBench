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
struct pidfh {int dummy; } ;
struct kevent {int dummy; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 char* AUTOUNMOUNTD_PIDFILE ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EVFILT_FS ; 
 int EV_ADD ; 
 int EV_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  automounted ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,char**,char*) ; 
 int FUNC9 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 struct pidfh* FUNC16 (char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC18 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

int
FUNC21(int argc, char **argv)
{
	struct kevent event;
	struct pidfh *pidfh;
	pid_t otherpid;
	const char *pidfile_path = AUTOUNMOUNTD_PIDFILE;
	int ch, debug = 0, error, kq;
	time_t expiration_time = 600, retry_time = 600, mounted_max, sleep_time;
	bool dont_daemonize = false;

	while ((ch = FUNC8(argc, argv, "dr:t:v")) != -1) {
		switch (ch) {
		case 'd':
			dont_daemonize = true;
			debug++;
			break;
		case 'r':
			retry_time = FUNC2(optarg);
			break;
		case 't':
			expiration_time = FUNC2(optarg);
			break;
		case 'v':
			debug++;
			break;
		case '?':
		default:
			FUNC20();
		}
	}
	argc -= optind;
	if (argc != 0)
		FUNC20();

	if (retry_time <= 0)
		FUNC13(1, "retry time must be greater than zero");
	if (expiration_time <= 0)
		FUNC13(1, "expiration time must be greater than zero");

	FUNC14(debug);

	pidfh = FUNC16(pidfile_path, 0600, &otherpid);
	if (pidfh == NULL) {
		if (errno == EEXIST) {
			FUNC13(1, "daemon already running, pid: %jd.",
			    (intmax_t)otherpid);
		}
		FUNC12(1, "cannot open or create pidfile \"%s\"",
		    pidfile_path);
	}

	if (dont_daemonize == false) {
		if (FUNC3(0, 0) == -1) {
			FUNC15("cannot daemonize");
			FUNC17(pidfh);
			FUNC6(1);
		}
	}

	FUNC18(pidfh);

	FUNC1(&automounted);

	kq = FUNC10();
	if (kq < 0)
		FUNC12(1, "kqueue");

	FUNC0(&event, 0, EVFILT_FS, EV_ADD | EV_CLEAR, 0, 0, NULL);
	error = FUNC9(kq, &event, 1, NULL, 0, NULL);
	if (error < 0)
		FUNC12(1, "kevent");

	for (;;) {
		FUNC19();
		mounted_max = FUNC7(expiration_time);
		if (mounted_max == -1) {
			sleep_time = mounted_max;
			FUNC11("no filesystems to expire");
		} else if (mounted_max < expiration_time) {
			sleep_time = FUNC4(expiration_time, mounted_max);
			FUNC11("some filesystems expire in %ld  seconds",
			    (long)sleep_time);
		} else {
			sleep_time = retry_time;
			FUNC11("some expired filesystems remain mounted, "
			    "will retry in %ld  seconds", (long)sleep_time);
		}

		FUNC5(kq, sleep_time);
	}

	return (0);
}