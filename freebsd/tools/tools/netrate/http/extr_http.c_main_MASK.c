#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uintmax_t ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_9__ {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct state {char* path; int run_done; TYPE_2__* hwd; int /*<<< orphan*/  start_barrier; TYPE_5__ sin; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_8__ {scalar_t__ hwd_pid; scalar_t__ hwd_errorcount; scalar_t__ hwd_count; int /*<<< orphan*/  hwd_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int DEFAULTSECONDS ; 
 int DEFAULTTHREADS ; 
 int /*<<< orphan*/  INHERIT_SHARE ; 
 int /*<<< orphan*/  MAP_ANON ; 
 struct state* MAP_FAILED ; 
 int MAXTHREADS ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int curthread ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  main_sighup ; 
 scalar_t__ FUNC13 (struct state*,size_t,int /*<<< orphan*/ ) ; 
 struct state* FUNC14 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int numseconds ; 
 int numthreads ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_2__*),TYPE_2__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 struct state* statep ; 
 int threaded ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC25(int argc, char *argv[])
{
	int ch, error, i;
	struct state *pagebuffer;
	uintmax_t total;
	size_t len;
	pid_t pid;

	numthreads = DEFAULTTHREADS;
	numseconds = DEFAULTSECONDS;
	while ((ch = FUNC6(argc, argv, "n:s:t")) != -1) {
		switch (ch) {
		case 'n':
			numthreads = FUNC0(optarg);
			break;

		case 's':
			numseconds = FUNC0(optarg);
			break;

		case 't':
			threaded = 1;
			break;

		default:
			FUNC23();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 3)
		FUNC23();

	if (numthreads > MAXTHREADS)
		FUNC3(-1, "%d exceeds max threads %d", numthreads,
		    MAXTHREADS);

	len = FUNC19(sizeof(struct state), FUNC7());
	pagebuffer = FUNC14(NULL, len, PROT_READ | PROT_WRITE, MAP_ANON, -1, 0);
	if (pagebuffer == MAP_FAILED)
		FUNC2(-1, "mmap");
	if (FUNC13(pagebuffer, len, INHERIT_SHARE) < 0)
		FUNC2(-1, "minherit");
	statep = pagebuffer;

	FUNC1(&statep->sin, sizeof(statep->sin));
	statep->sin.sin_len = sizeof(statep->sin);
	statep->sin.sin_family = AF_INET;
	statep->sin.sin_addr.s_addr = FUNC11(argv[0]);
	statep->sin.sin_port = FUNC8(FUNC0(argv[1]));
	statep->path = argv[2];

	/*
	 * Do one test retrieve so we can report the error from it, if any.
	 */
	if (FUNC9(&statep->sin, statep->path, 0) < 0)
		FUNC4(-1);

	if (threaded) {
		if (FUNC16(&statep->start_barrier, NULL,
		    numthreads) != 0)
			FUNC2(-1, "pthread_barrier_init");
	}

	for (i = 0; i < numthreads; i++) {
		statep->hwd[i].hwd_count = 0;
		if (threaded) {
			if (FUNC17(&statep->hwd[i].hwd_thread, NULL,
			    http_worker, &statep->hwd[i]) != 0)
				FUNC2(-1, "pthread_create");
		} else {
			curthread = i;
			pid = FUNC5();
			if (pid < 0) {
				error = errno;
				FUNC12();
				errno = error;
				FUNC2(-1, "fork");
			}
			if (pid == 0) {
				FUNC10(&statep->hwd[i]);
				FUNC15("Doh\n");
				FUNC4(0);
			}
			statep->hwd[i].hwd_pid = pid;
		}
	}
	if (!threaded) {
		FUNC20(SIGHUP, main_sighup);
		FUNC22(2);
		FUNC21();
	}
	FUNC22(numseconds);
	statep->run_done = 1;
	if (!threaded)
		FUNC22(2);
	for (i = 0; i < numthreads; i++) {
		if (threaded) {
			if (FUNC18(statep->hwd[i].hwd_thread, NULL)
			    != 0)
				FUNC2(-1, "pthread_join");
		} else {
			pid = FUNC24(statep->hwd[i].hwd_pid, NULL, 0);
			if (pid == statep->hwd[i].hwd_pid)
				statep->hwd[i].hwd_pid = 0;
		}
	}
	if (!threaded)
		FUNC12();
	total = 0;
	for (i = 0; i < numthreads; i++)
		total += statep->hwd[i].hwd_count;
	FUNC15("%ju transfers/second\n", total / numseconds);
	total = 0;
	for (i = 0; i < numthreads; i++)
		total += statep->hwd[i].hwd_errorcount;
	FUNC15("%ju errors/second\n", total / numseconds);
	return (0);
}