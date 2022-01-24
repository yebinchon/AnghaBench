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
struct vnode {TYPE_1__* v_rdev; } ;
struct snapdata {int /*<<< orphan*/  sn_lock; } ;
struct TYPE_2__ {struct snapdata* si_snapdata; } ;

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_INTERLOCK ; 
 int LK_NOWAIT ; 
 int LK_SLEEPFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 struct snapdata* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct snapdata*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static struct snapdata *
FUNC7(struct vnode *devvp)
{
	struct snapdata *nsn, *sn;
	int error;

	/*
	 * Allocate a free snapdata.  This is done before acquiring the
	 * devvp lock to avoid allocation while the devvp interlock is
	 * held.
	 */
	nsn = FUNC3();

	for (;;) {
		FUNC0(devvp);
		sn = devvp->v_rdev->si_snapdata;
		if (sn == NULL) {
			/*
			 * This is the first snapshot on this
			 * filesystem and we use our pre-allocated
			 * snapdata.  Publish sn with the sn_lock
			 * owned by us, to avoid the race.
			 */
			error = FUNC5(&nsn->sn_lock, LK_EXCLUSIVE |
			    LK_NOWAIT, NULL);
			if (error != 0)
				FUNC6("leaked sn, lockmgr error %d", error);
			sn = devvp->v_rdev->si_snapdata = nsn;
			FUNC2(devvp);
			nsn = NULL;
			break;
		}

		/*
		 * There is a snapshots which already exists on this
		 * filesystem, grab a reference to the common lock.
		 */
		error = FUNC5(&sn->sn_lock, LK_INTERLOCK |
		    LK_EXCLUSIVE | LK_SLEEPFAIL, FUNC1(devvp));
		if (error == 0)
			break;
	}

	/*
	 * Free any unused snapdata.
	 */
	if (nsn != NULL)
		FUNC4(nsn);

	return (sn);
}