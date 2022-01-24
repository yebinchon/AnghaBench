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
struct mount {int mnt_kern_flag; int /*<<< orphan*/  mnt_writeopcount; int /*<<< orphan*/  mnt_flag; TYPE_1__* mnt_susp_owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_pflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MNTK_SUSPEND ; 
 int MNTK_SUSPEND2 ; 
 int MNTK_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDP_IGNSUSP ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int VR_NO_SUSPCLR ; 
 int VR_START_WRITE ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct mount *mp, int flags)
{

	FUNC4(FUNC8(mp));

	FUNC1(mp);
	if ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0) {
		FUNC0(mp->mnt_susp_owner == curthread, ("mnt_susp_owner"));
		mp->mnt_kern_flag &= ~(MNTK_SUSPEND | MNTK_SUSPEND2 |
				       MNTK_SUSPENDED);
		mp->mnt_susp_owner = NULL;
		FUNC9(&mp->mnt_writeopcount);
		FUNC9(&mp->mnt_flag);
		curthread->td_pflags &= ~TDP_IGNSUSP;
		if ((flags & VR_START_WRITE) != 0) {
			FUNC3(mp);
			mp->mnt_writeopcount++;
		}
		FUNC2(mp);
		if ((flags & VR_NO_SUSPCLR) == 0)
			FUNC5(mp);
		FUNC6(mp);
	} else if ((flags & VR_START_WRITE) != 0) {
		FUNC3(mp);
		FUNC7(mp, 0, true);
	} else {
		FUNC2(mp);
	}
}