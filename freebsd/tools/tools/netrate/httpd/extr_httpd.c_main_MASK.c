#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct state {scalar_t__ listen_sock; char* path; scalar_t__ data_file; TYPE_1__* hts; int /*<<< orphan*/  utsname; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {scalar_t__ hts_fd; scalar_t__ hts_pid; int /*<<< orphan*/  hts_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FILESIZE ; 
 int /*<<< orphan*/  INHERIT_SHARE ; 
 int /*<<< orphan*/  MAP_ANON ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PF_INET ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int THREADS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char,int) ; 
 scalar_t__ FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_1__*),TYPE_1__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct state* statep ; 
 int threaded ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ FUNC25 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC26 (scalar_t__,char*,int) ; 

int
FUNC27(int argc, char *argv[])
{
	u_char filebuffer[FILESIZE];
	char temppath[PATH_MAX];
	struct sockaddr_in sin;
	int ch, error, i;
	char *pagebuffer;
	ssize_t len;
	pid_t pid;


	while ((ch = FUNC6(argc, argv, "t")) != -1) {
		switch (ch) {
		case 't':
			threaded = 1;
			break;

		default:
			FUNC24();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1 && argc != 2)
		FUNC24();

	len = FUNC19(sizeof(struct state), FUNC7());
	pagebuffer = FUNC15(NULL, len, PROT_READ | PROT_WRITE, MAP_ANON, -1, 0);
	if (pagebuffer == MAP_FAILED)
		FUNC3(-1, "mmap");
	if (FUNC13(pagebuffer, len, INHERIT_SHARE) < 0)
		FUNC3(-1, "minherit");
	statep = (struct state *)pagebuffer;

	if (FUNC22(&statep->utsname) < 0)
		FUNC3(-1, "utsname");

	statep->listen_sock = FUNC21(PF_INET, SOCK_STREAM, 0);
	if (statep->listen_sock < 0)
		FUNC3(-1, "socket(PF_INET, SOCK_STREAM)");

	FUNC2(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC8(FUNC0(argv[0]));

	/*
	 * If a path is specified, use it.  Otherwise, create temporary files
	 * with some data for each thread.
	 */
	statep->path = argv[1];
	if (statep->path != NULL) {
		statep->data_file = FUNC16(statep->path, O_RDONLY);
		if (statep->data_file < 0)
			FUNC3(-1, "open: %s", statep->path);
		for (i = 0; i < THREADS; i++)
			statep->hts[i].hts_fd = statep->data_file;
	} else {
		FUNC12(filebuffer, 'A', FILESIZE - 1);
		filebuffer[FILESIZE - 1] = '\n';
		for (i = 0; i < THREADS; i++) {
			FUNC20(temppath, PATH_MAX, "/tmp/httpd.XXXXXXXXXXX");
			statep->hts[i].hts_fd = FUNC14(temppath);
			if (statep->hts[i].hts_fd < 0)
				FUNC3(-1, "mkstemp");
			(void)FUNC23(temppath);
			len = FUNC26(statep->hts[i].hts_fd, filebuffer,
			    FILESIZE);
			if (len < 0)
				FUNC3(-1, "write");
			if (len < FILESIZE)
				FUNC4(-1, "write: short");
		}
	}

	if (FUNC1(statep->listen_sock, (struct sockaddr *)&sin,
	    sizeof(sin)) < 0)
		FUNC3(-1, "bind");

	if (FUNC11(statep->listen_sock, -1) < 0)
		FUNC3(-1, "listen");

	for (i = 0; i < THREADS; i++) {
		if (threaded) {
			if (FUNC17(&statep->hts[i].hts_thread, NULL,
			    httpd_worker, &statep->hts[i]) != 0)
				FUNC3(-1, "pthread_create");
		} else {
			pid = FUNC5();
			if (pid < 0) {
				error = errno;
				FUNC10();
				errno = error;
				FUNC3(-1, "fork");
			}
			if (pid == 0)
				FUNC9(&statep->hts[i]);
			statep->hts[i].hts_pid = pid;
		}
	}

	for (i = 0; i < THREADS; i++) {
		if (threaded) {
			if (FUNC18(statep->hts[i].hts_thread, NULL)
			    != 0)
				FUNC3(-1, "pthread_join");
		} else {
			pid = FUNC25(statep->hts[i].hts_pid, NULL, 0);
			if (pid == statep->hts[i].hts_pid)
				statep->hts[i].hts_pid = 0;
		}
	}
	if (!threaded)
		FUNC10();
	return (0);
}