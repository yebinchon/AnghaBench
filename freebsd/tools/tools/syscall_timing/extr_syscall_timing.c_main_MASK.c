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
typedef  int uintmax_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct test {char* t_name; int t_flags; int (* t_func ) (int,int /*<<< orphan*/ ,char const*) ;int /*<<< orphan*/  t_int; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ ENOENT ; 
 int FLAG_PATH ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int UINT64_MAX ; 
 int alarm_timeout ; 
 int FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ errno ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,char**,char*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (char*) ; 
 long long FUNC13 (char*,char**,int) ; 
 int FUNC14 (int,int /*<<< orphan*/ ,char const*) ; 
 int FUNC15 (int,int /*<<< orphan*/ ,char const*) ; 
 struct test* tests ; 
 int tests_count ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ ts_end ; 
 int /*<<< orphan*/  ts_start ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 

int
FUNC20(int argc, char *argv[])
{
	struct timespec ts_res;
	const struct test *the_test;
	const char *path;
	char *tmp_dir, *tmp_path;
	long long ll;
	char *endp;
	int ch, fd, error, i, j, rv;
	uintmax_t iterations, k, loops;

	alarm_timeout = 1;
	iterations = 0;
	loops = 10;
	path = NULL;
	tmp_path = NULL;
	while ((ch = FUNC6(argc, argv, "i:l:p:s:")) != -1) {
		switch (ch) {
		case 'i':
			ll = FUNC13(optarg, &endp, 10);
			if (*endp != 0 || ll < 1)
				FUNC18();
			iterations = ll;
			break;

		case 'l':
			ll = FUNC13(optarg, &endp, 10);
			if (*endp != 0 || ll < 1 || ll > 100000)
				FUNC18();
			loops = ll;
			break;

		case 'p':
			path = optarg;
			break;

		case 's':
			ll = FUNC13(optarg, &endp, 10);
			if (*endp != 0 || ll < 1 || ll > 60*60)
				FUNC18();
			alarm_timeout = ll;
			break;

		case '?':
		default:
			FUNC18();
		}
	}
	argc -= optind;
	argv += optind;

	if (iterations < 1 && alarm_timeout < 1)
		FUNC18();
	if (iterations < 1)
		iterations = UINT64_MAX;
	if (loops < 1)
		loops = 1;

	if (argc < 1)
		FUNC18();

	/*
	 * Validate test list and that, if a path is required, it is
	 * defined.
	 */
	for (j = 0; j < argc; j++) {
		the_test = NULL;
		for (i = 0; i < tests_count; i++) {
			if (FUNC11(argv[j], tests[i].t_name) == 0)
				the_test = &tests[i];
		}
		if (the_test == NULL)
			FUNC18();
		if ((the_test->t_flags & FLAG_PATH) && (path == NULL)) {
			tmp_dir = FUNC12("/tmp/syscall_timing.XXXXXXXX");
			if (tmp_dir == NULL)
				FUNC4(1, "strdup");
			tmp_dir = FUNC7(tmp_dir);
			if (tmp_dir == NULL)
				FUNC4(1, "mkdtemp");
			rv = FUNC0(&tmp_path, "%s/testfile", tmp_dir);
			if (rv <= 0)
				FUNC4(1, "asprintf");
		}
	}

	error = FUNC2(CLOCK_REALTIME, &ts_res);
	FUNC1(error == 0);
	FUNC9("Clock resolution: %ju.%09ju\n", (uintmax_t)ts_res.tv_sec,
	    (uintmax_t)ts_res.tv_nsec);
	FUNC9("test\tloop\ttime\titerations\tperiteration\n");

	for (j = 0; j < argc; j++) {
		uintmax_t calls, nsecsperit;

		the_test = NULL;
		for (i = 0; i < tests_count; i++) {
			if (FUNC11(argv[j], tests[i].t_name) == 0)
				the_test = &tests[i];
		}

		if (tmp_path != NULL) {
			fd = FUNC8(tmp_path, O_WRONLY | O_CREAT, 0700);
			if (fd < 0)
				FUNC4(1, "cannot open %s", tmp_path);
			error = FUNC5(fd, 1000000);
			if (error != 0)
				FUNC4(1, "ftruncate");
			error = FUNC3(fd);
			if (error != 0)
				FUNC4(1, "close");
			path = tmp_path;
		}

		/*
		 * Run one warmup, then do the real thing (loops) times.
		 */
		the_test->t_func(iterations, the_test->t_int, path);
		calls = 0;
		for (k = 0; k < loops; k++) {
			calls = the_test->t_func(iterations, the_test->t_int,
			    path);
			FUNC16(&ts_end, &ts_start, &ts_end);
			FUNC9("%s\t%ju\t", the_test->t_name, k);
			FUNC9("%ju.%09ju\t%ju\t", (uintmax_t)ts_end.tv_sec,
			    (uintmax_t)ts_end.tv_nsec, calls);

		/*
		 * Note.  This assumes that each iteration takes less than
		 * a second, and that our total nanoseconds doesn't exceed
		 * the room in our arithmetic unit.  Fine for system calls,
		 * but not for long things.
		 */
			nsecsperit = ts_end.tv_sec * 1000000000;
			nsecsperit += ts_end.tv_nsec;
			nsecsperit /= calls;
			FUNC9("0.%09ju\n", (uintmax_t)nsecsperit);
		}
	}

	if (tmp_path != NULL) {
		error = FUNC17(tmp_path);
		if (error != 0 && errno != ENOENT)
			FUNC19("cannot unlink %s", tmp_path);
		error = FUNC10(tmp_dir);
		if (error != 0)
			FUNC19("cannot rmdir %s", tmp_dir);
	}

	return (0);
}