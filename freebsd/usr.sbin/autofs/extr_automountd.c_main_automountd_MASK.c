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
struct pidfh {int dummy; } ;
struct autofs_daemon_request {int dummy; } ;
typedef  int /*<<< orphan*/  request ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOFSREQUEST ; 
 int /*<<< orphan*/  AUTOFS_PATH ; 
 char* AUTOMOUNTD_PIDFILE ; 
 int EEXIST ; 
 int EINTR ; 
 int ENOENT ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ autofs_fd ; 
 char* FUNC2 (char*,char,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct autofs_daemon_request*,char*,int) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,struct autofs_daemon_request*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct autofs_daemon_request*,int /*<<< orphan*/ ,int) ; 
 int nchildren ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC20 (struct pidfh*) ; 
 struct pidfh* FUNC21 (char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC23 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ FUNC26 (int) ; 

int
FUNC27(int argc, char **argv)
{
	struct pidfh *pidfh;
	pid_t pid, otherpid;
	const char *pidfile_path = AUTOMOUNTD_PIDFILE;
	char *options = NULL;
	struct autofs_daemon_request request;
	int ch, debug = 0, error, maxproc = 30, retval, saved_errno;
	bool dont_daemonize = false, incomplete_hierarchy = false;

	FUNC4();

	while ((ch = FUNC8(argc, argv, "D:Tdim:o:v")) != -1) {
		switch (ch) {
		case 'D':
			FUNC5(optarg);
			break;
		case 'T':
			/*
			 * For compatibility with other implementations,
			 * such as OS X.
			 */
			debug++;
			break;
		case 'd':
			dont_daemonize = true;
			debug++;
			break;
		case 'i':
			incomplete_hierarchy = true;
			break;
		case 'm':
			maxproc = FUNC1(optarg);
			break;
		case 'o':
			options = FUNC2(options, ',', optarg);
			break;
		case 'v':
			debug++;
			break;
		case '?':
		default:
			FUNC25();
		}
	}
	argc -= optind;
	if (argc != 0)
		FUNC25();

	FUNC16(debug);

	pidfh = FUNC21(pidfile_path, 0600, &otherpid);
	if (pidfh == NULL) {
		if (errno == EEXIST) {
			FUNC15(1, "daemon already running, pid: %jd.",
			    (intmax_t)otherpid);
		}
		FUNC14(1, "cannot open or create pidfile \"%s\"",
		    pidfile_path);
	}

	autofs_fd = FUNC19(AUTOFS_PATH, O_RDWR | O_CLOEXEC);
	if (autofs_fd < 0 && errno == ENOENT) {
		saved_errno = errno;
		retval = FUNC11("autofs");
		if (retval != -1)
			autofs_fd = FUNC19(AUTOFS_PATH, O_RDWR | O_CLOEXEC);
		else
			errno = saved_errno;
	}
	if (autofs_fd < 0)
		FUNC14(1, "failed to open %s", AUTOFS_PATH);

	if (dont_daemonize == false) {
		if (FUNC3(0, 0) == -1) {
			FUNC17("cannot daemonize");
			FUNC22(pidfh);
			FUNC6(1);
		}
	} else {
		FUNC12();
	}

	FUNC23(pidfh);

	FUNC24();

	for (;;) {
		FUNC13("waiting for request from the kernel");

		FUNC18(&request, 0, sizeof(request));
		error = FUNC10(autofs_fd, AUTOFSREQUEST, &request);
		if (error != 0) {
			if (errno == EINTR) {
				nchildren -= FUNC26(false);
				FUNC0(nchildren >= 0);
				continue;
			}

			FUNC14(1, "AUTOFSREQUEST");
		}

		if (dont_daemonize) {
			FUNC13("not forking due to -d flag; "
			    "will exit after servicing a single request");
		} else {
			nchildren -= FUNC26(false);
			FUNC0(nchildren >= 0);

			while (maxproc > 0 && nchildren >= maxproc) {
				FUNC13("maxproc limit of %d child processes hit; "
				    "waiting for child process to exit", maxproc);
				nchildren -= FUNC26(true);
				FUNC0(nchildren >= 0);
			}
			FUNC13("got request; forking child process #%d",
			    nchildren);
			nchildren++;

			pid = FUNC7();
			if (pid < 0)
				FUNC14(1, "fork");
			if (pid > 0)
				continue;
		}

		FUNC20(pidfh);
		FUNC9(&request, options, incomplete_hierarchy);
	}

	FUNC20(pidfh);

	return (0);
}