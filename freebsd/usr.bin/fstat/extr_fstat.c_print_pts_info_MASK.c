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
typedef  char* uintmax_t ;
struct ptsstat {char* devname; scalar_t__ dev; } ;
struct procstat {int dummy; } ;
struct filestat {int /*<<< orphan*/  fs_fflags; } ;

/* Variables and functions */
 int _POSIX2_LINE_MAX ; 
 scalar_t__ nflg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct procstat*,struct filestat*,struct ptsstat*,char*) ; 

__attribute__((used)) static void
FUNC3(struct procstat *procstat, struct filestat *fst)
{
	struct ptsstat pts;
	char errbuf[_POSIX2_LINE_MAX];
	int error;

	error = FUNC2(procstat, fst, &pts, errbuf);
	if (error != 0) {
		FUNC1("* error");
		return;
	}
	FUNC1("* pseudo-terminal master ");
	if (nflg || !*pts.devname) {
		FUNC1("%#10jx", (uintmax_t)pts.dev);
	} else {
		FUNC1("%10s", pts.devname);
	}
	FUNC0(fst->fs_fflags);
}