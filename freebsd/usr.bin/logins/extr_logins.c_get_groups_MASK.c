#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct group {char* gr_name; char* gr_passwd; int /*<<< orphan*/ ** gr_mem; int /*<<< orphan*/  gr_gid; } ;
struct TYPE_4__ {char* gr_mem; int /*<<< orphan*/  gr_gid; void* gr_passwd; void* gr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct group* FUNC1 () ; 
 TYPE_1__* grps ; 
 int grpsz ; 
 int ngrps ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (size_t) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int) ; 
 void* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct group *grp;
	size_t len;
	int i;

	FUNC2();
	for (;;) {
		if (ngrps == grpsz) {
			grpsz += grpsz ? grpsz : 128;
			grps = FUNC6(grps, grpsz * sizeof *grps);
		}
		if ((grp = FUNC1()) == NULL)
			break;
		grps[ngrps].gr_name = FUNC7(grp->gr_name);
		grps[ngrps].gr_passwd = FUNC7(grp->gr_passwd);
		grps[ngrps].gr_gid = grp->gr_gid;
		grps[ngrps].gr_mem = FUNC7("");
		for (i = 0, len = 1; grp->gr_mem[i] != NULL; ++i)
			len += FUNC4(grp->gr_mem[i]) + 1;
		grps[ngrps].gr_mem = FUNC5(len);
		for (i = 0, len = 0; grp->gr_mem[i] != NULL; ++i)
			len += FUNC3(grps[ngrps].gr_mem + len,
			    i ? ",%s" : "%s", grp->gr_mem[i]);
		grps[ngrps].gr_mem[len] = '\0';
		ngrps++;
	}
	FUNC0();
}