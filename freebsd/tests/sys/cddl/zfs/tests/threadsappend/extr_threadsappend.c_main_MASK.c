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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  go ; 
 int FUNC2 (char*,int,int) ; 
 size_t optind ; 
 int outfd ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char **argv)
{
	pthread_t threads[2];
	int	  ret = 0;
	long	  ncpus = 0;
	int	  i;

	if (argc != 2) {
		FUNC7();
	}

	ncpus = FUNC6(_SC_NPROCESSORS_ONLN);
	if (ncpus < 0) {
		(void) FUNC1(stderr,
		    "Invalid return from sysconf(_SC_NPROCESSORS_ONLN)"
		    " : errno (decimal)=%d\n", errno);
		FUNC0(1);
	}
	if (ncpus < 2) {
		(void) FUNC1(stderr,
		    "Must execute this binary on a multi-processor system\n");
		FUNC0(1);
	}

	outfd = FUNC2(argv[optind++], O_RDWR|O_CREAT|O_APPEND|O_TRUNC, 0777);
	if (outfd == -1) {
		(void) FUNC1(stderr,
		    "zfs_threadsappend: "
		    "open(%s, O_RDWR|O_CREAT|O_APPEND|O_TRUNC, 0777)"
		    " failed\n", argv[optind]);
		FUNC3("open");
		FUNC0(1);
	}

	for (i = 0; i < 2; i++) {
		ret = FUNC4(&threads[i], NULL, go, (void *)&i);
		if (ret != 0) {
			(void) FUNC1(stderr,
			    "zfs_threadsappend: thr_create(#%d) "
			    "failed error=%d\n", i+1, ret);
			FUNC0(1);
		}
	}

	for (i = 0; i < 2; i++) {
		if (FUNC5(threads[i], NULL) != 0)
			break;
	}

	return (0);
}