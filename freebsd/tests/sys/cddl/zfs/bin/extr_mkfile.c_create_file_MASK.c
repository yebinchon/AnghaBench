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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  MKFILE_FLAG ; 
 int /*<<< orphan*/  MKFILE_MODE ; 
 unsigned long long MKFILE_WBUF ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,unsigned long long) ; 
 scalar_t__ FUNC3 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nofill ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ verbose ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC6(char *f, unsigned long long s)
{
	int fd;
	size_t w;
	ssize_t ws;

	if (verbose) {
		FUNC2(stdout, "%s %llu bytes\n", f, s);
		FUNC1(stdout);
	}

	/* Open file to create. */
	if ((fd = FUNC4(f, MKFILE_FLAG, MKFILE_MODE)) < 0) {
		return -1;
	}

	/* Seek to the end and write 1 byte. */
	if ((FUNC3(fd, (off_t)(s - 1LL), SEEK_SET) == (off_t)-1) ||
	    (FUNC5(fd, buf, (size_t)1) == (ssize_t)-1)) {
		/*
		 * We don't close(fd) here to avoid overwriting errno.
		 * This is fd-leak, but is not harmful
		 * because returning error causes mkfile(8) to exit.
		 */
		return -1;
	}

	/* Fill. */
	if (!nofill) {
		if (FUNC3(fd, (off_t)0, SEEK_SET) == (off_t)-1) {
			/* Same as above. */
			return -1;
		}
		while (s) {
			w = (s > MKFILE_WBUF) ? MKFILE_WBUF : s;
			if ((ws = FUNC5(fd, buf, w)) == (ssize_t)-1) {
				/* Same as above. */
				return -1;
			}
			s -= ws;
		}
	}
	FUNC0(fd);

	return 0;
}