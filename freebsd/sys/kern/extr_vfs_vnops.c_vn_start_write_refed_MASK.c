#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mount {int mnt_kern_flag; int /*<<< orphan*/  mnt_writeopcount; int /*<<< orphan*/  mnt_flag; TYPE_1__* mnt_vfc; TYPE_2__* mnt_susp_owner; } ;
struct TYPE_4__ {int td_pflags; } ;
struct TYPE_3__ {int vfc_flags; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MNTK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PCATCH ; 
 int PUSER ; 
 int TDP_IGNSUSP ; 
 int VFCF_SBDRY ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_2__* curthread ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  writeopcount ; 

__attribute__((used)) static int
FUNC11(struct mount *mp, int flags, bool mplocked)
{
	int error, mflags;

	if (FUNC5(!mplocked) && (flags & V_XSLEEP) == 0 &&
	    FUNC9(mp)) {
		FUNC4((mp->mnt_kern_flag & MNTK_SUSPEND) == 0);
		FUNC8(mp, writeopcount, 1);
		FUNC10(mp);
		return (0);
	}

	if (mplocked)
		FUNC7(FUNC2(mp), MA_OWNED);
	else
		FUNC0(mp);

	error = 0;

	/*
	 * Check on status of suspension.
	 */
	if ((curthread->td_pflags & TDP_IGNSUSP) == 0 ||
	    mp->mnt_susp_owner != curthread) {
		mflags = ((mp->mnt_vfc->vfc_flags & VFCF_SBDRY) != 0 ?
		    (flags & PCATCH) : 0) | (PUSER - 1);
		while ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0) {
			if (flags & V_NOWAIT) {
				error = EWOULDBLOCK;
				goto unlock;
			}
			error = FUNC6(&mp->mnt_flag, FUNC2(mp), mflags,
			    "suspfs", 0);
			if (error)
				goto unlock;
		}
	}
	if (flags & V_XSLEEP)
		goto unlock;
	mp->mnt_writeopcount++;
unlock:
	if (error != 0 || (flags & V_XSLEEP) != 0)
		FUNC3(mp);
	FUNC1(mp);
	return (error);
}