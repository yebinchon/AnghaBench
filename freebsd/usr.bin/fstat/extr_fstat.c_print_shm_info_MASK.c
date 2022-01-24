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
struct shmstat {int mode; int /*<<< orphan*/  size; } ;
struct procstat {int dummy; } ;
struct filestat {char* fs_path; int /*<<< orphan*/  fs_fflags; } ;
typedef  int /*<<< orphan*/  mode ;

/* Variables and functions */
 int _POSIX2_LINE_MAX ; 
 scalar_t__ nflg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct procstat*,struct filestat*,struct shmstat*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void
FUNC5(struct procstat *procstat, struct filestat *fst)
{
	struct shmstat shm;
	char errbuf[_POSIX2_LINE_MAX];
	char mode[15];
	int error;

	error = FUNC2(procstat, fst, &shm, errbuf);
	if (error != 0) {
		FUNC1("* error");
		return;
	}
	if (nflg) {
		FUNC1("             ");
		(void)FUNC3(mode, sizeof(mode), "%o", shm.mode);
	} else {
		FUNC1(" %-15s", fst->fs_path != NULL ? fst->fs_path : "-");
		FUNC4(shm.mode, mode);
	}
	FUNC1(" %10s %6ju", mode, shm.size);
	FUNC0(fst->fs_fflags);
}