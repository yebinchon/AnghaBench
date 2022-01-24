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
typedef  int u_int ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGFLUSH ; 
 scalar_t__ ENOTSUP ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int MAXTX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 () ; 

__attribute__((used)) static void
FUNC9(int fd, int isreg, off_t mediasize, u_int sectorsize)
{
	off_t off;
	u_int size;
	int error, n, N, nowritecache = 0;

	FUNC7("Synchronous random writes:\n");
	for (size = sectorsize; size <= MAXTX; size *= 2) {
		FUNC7("\t%4.4g kbytes: ", (double)size / 1024);
		N = 0;
		FUNC0();
		do {
			for (n = 0; n < 250; n++) {
				off = FUNC8() % (mediasize / size);
				FUNC6(fd, size, off * size);
				if (nowritecache)
					continue;
				if (isreg)
					error = FUNC4(fd);
				else
					error = FUNC5(fd, DIOCGFLUSH);
				if (error < 0) {
					if (errno == ENOTSUP)
						nowritecache = 1;
					else
						FUNC3(EX_IOERR, "Flush error");
				}
			}
			N += 250;
		} while (FUNC2() < 1.0);
		FUNC1(size, N);
	}
}