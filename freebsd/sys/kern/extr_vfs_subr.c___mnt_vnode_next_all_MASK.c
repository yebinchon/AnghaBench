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
struct vnode {scalar_t__ v_type; int v_iflag; struct mount* v_mount; } ;
struct mount {int /*<<< orphan*/  mnt_nvnodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  PRI_USER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vnode*,struct vnode*,int /*<<< orphan*/ ) ; 
 struct vnode* FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 scalar_t__ VMARKER ; 
 int /*<<< orphan*/  FUNC9 (struct vnode**,struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  v_nmntvnodes ; 

struct vnode *
FUNC13(struct vnode **mvp, struct mount *mp)
{
	struct vnode *vp;

	if (FUNC12())
		FUNC10(PRI_USER);
	FUNC1(mp);
	FUNC0((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));
	for (vp = FUNC5(*mvp, v_nmntvnodes); vp != NULL;
	    vp = FUNC5(vp, v_nmntvnodes)) {
		/* Allow a racy peek at VI_DOOMED to save a lock acquisition. */
		if (vp->v_type == VMARKER || (vp->v_iflag & VI_DOOMED) != 0)
			continue;
		FUNC7(vp);
		if ((vp->v_iflag & VI_DOOMED) != 0) {
			FUNC8(vp);
			continue;
		}
		break;
	}
	if (vp == NULL) {
		FUNC9(mvp, mp);
		/* MNT_IUNLOCK(mp); -- done in above function */
		FUNC11(FUNC3(mp), MA_NOTOWNED);
		return (NULL);
	}
	FUNC6(&mp->mnt_nvnodelist, *mvp, v_nmntvnodes);
	FUNC4(&mp->mnt_nvnodelist, vp, *mvp, v_nmntvnodes);
	FUNC2(mp);
	return (vp);
}