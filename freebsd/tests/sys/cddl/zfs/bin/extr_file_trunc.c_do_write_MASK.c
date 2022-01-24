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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ bsize ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int fsize ; 
 scalar_t__ FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,scalar_t__) ; 
 scalar_t__ offset ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int,char*,scalar_t__) ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ vflag ; 
 scalar_t__ FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(int fd)
{
	off_t	roffset = 0;
	char 	*buf = NULL;
	char 	*rbuf = NULL;

	buf = (char *)FUNC0(1, bsize);
	rbuf = (char *)FUNC0(1, bsize);
	if (buf == NULL || rbuf == NULL) {
		FUNC6("malloc");
		FUNC1(4);
	}

	roffset = FUNC7() % fsize;
	if (FUNC4(fd, (offset + roffset), SEEK_SET) < 0) {
		FUNC6("lseek");
		FUNC1(5);
	}

	FUNC9(buf, "ZFS Test Suite Truncation Test");
	if (FUNC10(fd, buf, bsize) < bsize) {
		FUNC6("write");
		FUNC1(6);
	}

	if (rflag) {
		if (FUNC4(fd, (offset + roffset), SEEK_SET) < 0) {
			FUNC6("lseek");
			FUNC1(7);
		}

		if (FUNC8(fd, rbuf, bsize) < bsize) {
			FUNC6("read");
			FUNC1(8);
		}

		if (FUNC5(buf, rbuf, bsize) != 0) {
			FUNC6("memcmp");
			FUNC1(9);
		}
	}
	if (vflag) {
		(void) FUNC2(stderr,
		    "Wrote to offset %ld\n", (offset + roffset));
		if (rflag) {
			(void) FUNC2(stderr,
			    "Read back from offset %ld\n", (offset + roffset));
		}
	}

	(void) FUNC3(buf);
	(void) FUNC3(rbuf);
}