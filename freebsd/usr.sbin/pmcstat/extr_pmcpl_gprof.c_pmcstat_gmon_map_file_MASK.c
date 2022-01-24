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
struct pmcstat_gmonfile {int /*<<< orphan*/  pgf_gmondata; int /*<<< orphan*/  pgf_ndatabytes; int /*<<< orphan*/  pgf_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  MAP_FAILED ; 
 int MAP_NOSYNC ; 
 int MAP_SHARED ; 
 int O_NOFOLLOW ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct pmcstat_gmonfile *pgf)
{
	int fd;
	const char *pathname;

	pathname = FUNC4(pgf->pgf_name);

	/* the gmon.out file must already exist */
	if ((fd = FUNC3(pathname, O_RDWR | O_NOFOLLOW, 0)) < 0)
		FUNC1(EX_OSERR, "ERROR: cannot open \"%s\"", pathname);

	pgf->pgf_gmondata = FUNC2(NULL, pgf->pgf_ndatabytes,
	    PROT_READ|PROT_WRITE, MAP_NOSYNC|MAP_SHARED, fd, 0);

	if (pgf->pgf_gmondata == MAP_FAILED)
		FUNC1(EX_OSERR, "ERROR: cannot map \"%s\"", pathname);

	(void) FUNC0(fd);
}