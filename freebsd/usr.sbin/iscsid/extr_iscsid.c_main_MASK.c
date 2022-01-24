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
struct iscsi_daemon_request {int dummy; } ;
typedef  int /*<<< orphan*/  request ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 char* DEFAULT_PIDFILE ; 
 int EEXIST ; 
 int EINTR ; 
 int ENOENT ; 
 int /*<<< orphan*/  ISCSIDWAIT ; 
 int /*<<< orphan*/  ISCSI_PATH ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct iscsi_daemon_request*,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,struct iscsi_daemon_request*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct iscsi_daemon_request*,int /*<<< orphan*/ ,int) ; 
 int nchildren ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC16 (struct pidfh*) ; 
 struct pidfh* FUNC17 (char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC19 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 (int) ; 

int
FUNC23(int argc, char **argv)
{
	int ch, debug = 0, error, iscsi_fd, maxproc = 30, retval, saved_errno,
	    timeout = 60;
	bool dont_daemonize = false;
	struct pidfh *pidfh;
	pid_t pid, otherpid;
	const char *pidfile_path = DEFAULT_PIDFILE;
	struct iscsi_daemon_request request;

	while ((ch = FUNC5(argc, argv, "P:dl:m:t:")) != -1) {
		switch (ch) {
		case 'P':
			pidfile_path = optarg;
			break;
		case 'd':
			dont_daemonize = true;
			debug++;
			break;
		case 'l':
			debug = FUNC1(optarg);
			break;
		case 'm':
			maxproc = FUNC1(optarg);
			break;
		case 't':
			timeout = FUNC1(optarg);
			break;
		case '?':
		default:
			FUNC21();
		}
	}
	argc -= optind;
	if (argc != 0)
		FUNC21();

	FUNC12(debug);

	pidfh = FUNC17(pidfile_path, 0600, &otherpid);
	if (pidfh == NULL) {
		if (errno == EEXIST)
			FUNC11(1, "daemon already running, pid: %jd.",
			    (intmax_t)otherpid);
		FUNC10(1, "cannot open or create pidfile \"%s\"",
		    pidfile_path);
	}

	iscsi_fd = FUNC15(ISCSI_PATH, O_RDWR);
	if (iscsi_fd < 0 && errno == ENOENT) {
		saved_errno = errno;
		retval = FUNC8("iscsi");
		if (retval != -1)
			iscsi_fd = FUNC15(ISCSI_PATH, O_RDWR);
		else
			errno = saved_errno;
	}
	if (iscsi_fd < 0)
		FUNC10(1, "failed to open %s", ISCSI_PATH);

	if (dont_daemonize == false) {
		if (FUNC2(0, 0) == -1) {
			FUNC13("cannot daemonize");
			FUNC18(pidfh);
			FUNC3(1);
		}
	}

	FUNC19(pidfh);

	FUNC20();

	for (;;) {
		FUNC9("waiting for request from the kernel");

		FUNC14(&request, 0, sizeof(request));
		error = FUNC7(iscsi_fd, ISCSIDWAIT, &request);
		if (error != 0) {
			if (errno == EINTR) {
				nchildren -= FUNC22(false);
				FUNC0(nchildren >= 0);
				continue;
			}

			FUNC10(1, "ISCSIDWAIT");
		}

		if (dont_daemonize) {
			FUNC9("not forking due to -d flag; "
			    "will exit after servicing a single request");
		} else {
			nchildren -= FUNC22(false);
			FUNC0(nchildren >= 0);

			while (maxproc > 0 && nchildren >= maxproc) {
				FUNC9("maxproc limit of %d child processes hit; "
				    "waiting for child process to exit", maxproc);
				nchildren -= FUNC22(true);
				FUNC0(nchildren >= 0);
			}
			FUNC9("incoming connection; forking child process #%d",
			    nchildren);
			nchildren++;

			pid = FUNC4();
			if (pid < 0)
				FUNC10(1, "fork");
			if (pid > 0)
				continue;
		}

		FUNC16(pidfh);
		FUNC6(iscsi_fd, &request, timeout);
	}

	return (0);
}