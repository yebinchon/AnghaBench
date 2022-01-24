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
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct group* FUNC1 (char const*) ; 
 int FUNC2 (long,scalar_t__*) ; 
 scalar_t__* FUNC3 (int) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const char *grname)
{
	static struct group *gptr=NULL;
	static int ngroups = 0;
	static long ngroups_max;
	static gid_t *groups;
	register gid_t gid;
	register int i;

	if (gptr == NULL) {
		if ((gptr = FUNC1(grname)) == NULL) {
			FUNC5("warning: unknown group '%s'", grname);
			return(0);
		}
		ngroups_max = FUNC4(_SC_NGROUPS_MAX);
		if ((groups = FUNC3(sizeof(gid_t) * ngroups_max)) == NULL)
			FUNC0(1, "malloc");
		ngroups = FUNC2(ngroups_max, groups);
		if (ngroups < 0)
			FUNC0(1, "getgroups");
	}
	gid = gptr->gr_gid;
	for (i = 0; i < ngroups; i++)
		if (gid == groups[i])
			return(1);
	return(0);
}