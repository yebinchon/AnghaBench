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
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct vnode {int v_vflag; TYPE_1__* v_rdev; } ;
struct snapdata {int /*<<< orphan*/  sn_lock; scalar_t__ sn_listsize; int /*<<< orphan*/ * sn_blklist; int /*<<< orphan*/  sn_head; } ;
struct TYPE_2__ {struct snapdata* si_snapdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int LK_DRAIN ; 
 int LK_INTERLOCK ; 
 int LK_RELEASE ; 
 int /*<<< orphan*/  M_UFSMNT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int VV_COPYONWRITE ; 
 int /*<<< orphan*/  FUNC4 (struct snapdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct vnode *devvp)
{
	struct snapdata *sn;
	ufs2_daddr_t *snapblklist;

	FUNC0(devvp, "try_free_snapdata");
	sn = devvp->v_rdev->si_snapdata;

	if (sn == NULL || FUNC1(&sn->sn_head) != NULL ||
	    (devvp->v_vflag & VV_COPYONWRITE) == 0) {
		FUNC3(devvp);
		return;
	}

	devvp->v_rdev->si_snapdata = NULL;
	devvp->v_vflag &= ~VV_COPYONWRITE;
	FUNC6(&sn->sn_lock, LK_DRAIN|LK_INTERLOCK, FUNC2(devvp));
	snapblklist = sn->sn_blklist;
	sn->sn_blklist = NULL;
	sn->sn_listsize = 0;
	FUNC6(&sn->sn_lock, LK_RELEASE, NULL);
	if (snapblklist != NULL)
		FUNC5(snapblklist, M_UFSMNT);
	FUNC4(sn);
}