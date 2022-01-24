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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  outfile ;
typedef  int off_t ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ cflag ; 
 scalar_t__ dflag ; 
 int FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 scalar_t__ tflag ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC6(char *file, struct stat *sbp)
{
	off_t usize, gsize;
	char	outfile[PATH_MAX];

	FUNC3(file, sbp->st_size);
	if (dflag) {
		usize = FUNC1(file, outfile, sizeof(outfile));
#ifndef SMALL
		if (vflag && tflag)
			FUNC4(file, usize != -1);
#endif
		if (usize == -1)
			return;
		gsize = sbp->st_size;
	} else {
		gsize = FUNC0(file, outfile, sizeof(outfile));
		if (gsize == -1)
			return;
		usize = sbp->st_size;
	}
	FUNC2();

#ifndef SMALL
	if (vflag && !tflag)
		FUNC5(file, (cflag) ? NULL : outfile, usize, gsize);
#endif
}