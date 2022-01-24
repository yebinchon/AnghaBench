#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct statfs {int /*<<< orphan*/  f_fstypename; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_3__ {int num; int /*<<< orphan*/  (* testfn ) (int,int,char const**) ;scalar_t__ intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct statfs*) ; 
 int /*<<< orphan*/  ignore_alarm ; 
 int FUNC2 (char const*,int) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,char const**) ; 
 TYPE_1__* tests ; 

int
FUNC9(int argc, const char *argv[])
{
	int testnum;
	int fd;
	int nointr;
	unsigned i;
	struct sigaction sa;
	int test_argc;
	const char **test_argv;

	if (argc < 2) {
		FUNC0(1, "usage: flock <directory> [test number] ...");
	}

	fd = FUNC2(argv[1], 1024);
	if (argc >= 3) {
		testnum = FUNC7(argv[2], NULL, 0);
		test_argc = argc - 2;
		test_argv = argv + 2;
	} else {
		testnum = 0;
		test_argc = 0;
		test_argv = NULL;
	}

	sa.sa_handler = ignore_alarm;
	FUNC5(&sa.sa_mask);
	sa.sa_flags = 0;
	FUNC4(SIGALRM, &sa, 0);

	nointr = 0;
#if defined(__FreeBSD__) && __FreeBSD_version < 800040
	{
		/*
		 * FreeBSD with userland NLM can't interrupt a blocked
		 * lock request on an NFS mounted filesystem.
		 */
		struct statfs st;
		fstatfs(fd, &st);
		nointr = !strcmp(st.f_fstypename, "nfs");
	}
#endif

	for (i = 0; i < FUNC3(tests); i++) {
		if (tests[i].intr && nointr)
			continue;
		if (!testnum || tests[i].num == testnum)
			tests[i].testfn(fd, test_argc, test_argv);
	}

	return 0;
}