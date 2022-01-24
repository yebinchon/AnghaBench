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
struct fdc_status {unsigned int cyl; unsigned int heads; unsigned int head; int sec; int secshift; } ;
struct fdc_readid {unsigned int cyl; unsigned int heads; unsigned int head; int sec; int secshift; } ;
struct fd_type {unsigned int cyl; unsigned int heads; unsigned int head; int sec; int secshift; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int EX_IOERR ; 
 int EX_OSERR ; 
 int /*<<< orphan*/  FD_GSTAT ; 
 int /*<<< orphan*/  FD_GTYPE ; 
 int /*<<< orphan*/  FD_READID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct fdc_status*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fdc_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC7(int fd, unsigned int numids, unsigned int trackno)
{
	int rv = 0;
	unsigned int i;
	struct fdc_readid info;
	struct fdc_status fdcs;
	struct fd_type fdt;

	if (FUNC2(fd, FD_GTYPE, &fdt) == -1)
		FUNC0(EX_OSERR, "ioctl(FD_GTYPE) failed -- not a floppy?");

	for (i = 0; i < numids; i++) {
		info.cyl = trackno / fdt.heads;
		info.head = fdt.heads > 1? trackno % fdt.heads: 0;
		if (FUNC2(fd, FD_READID, &info) == 0) {
			FUNC4("C = %d, H = %d, R = %d, N = %d\n",
			       info.cyl, info.head, info.sec, info.secshift);
		} else {
			if (errno != EIO) {
				FUNC3("non-IO error");
				return (EX_OSERR);
			}
			if (FUNC2(fd, FD_GSTAT, &fdcs) == -1)
				FUNC1(EX_IOERR,
				     "floppy IO error, but no FDC status");
			FUNC5(&fdcs, 0);
			FUNC6('\n', stderr);
			rv = EX_IOERR;
		}
	}

	return (rv);
}