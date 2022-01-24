#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mount {int mnt_kern_flag; int /*<<< orphan*/  mnt_flag; } ;
struct TYPE_2__ {int td_pflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MNTK_SUSPEND2 ; 
 int MNTK_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TDP_IGNSUSP ; 
 int /*<<< orphan*/  V_WAIT ; 
 TYPE_1__* curthread ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct mount *mp)
{
	int error;

	FUNC3(FUNC7(mp));
	FUNC0((curthread->td_pflags & TDP_IGNSUSP) == 0,
	    ("vfs_write_suspend_umnt: recursed"));

	/* dounmount() already called vn_start_write(). */
	for (;;) {
		FUNC5(mp);
		error = FUNC4(mp, 0);
		if (error != 0) {
			FUNC6(NULL, &mp, V_WAIT);
			return (error);
		}
		FUNC1(mp);
		if ((mp->mnt_kern_flag & MNTK_SUSPENDED) != 0)
			break;
		FUNC2(mp);
		FUNC6(NULL, &mp, V_WAIT);
	}
	mp->mnt_kern_flag &= ~(MNTK_SUSPENDED | MNTK_SUSPEND2);
	FUNC8(&mp->mnt_flag);
	FUNC2(mp);
	curthread->td_pflags |= TDP_IGNSUSP;
	return (0);
}