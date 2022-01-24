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
struct vnode {int v_vflag; int v_iflag; struct mount* v_mount; } ;
struct mount {int mnt_kern_flag; scalar_t__ mnt_nvnodelistsize; int /*<<< orphan*/  mnt_listmtx; int /*<<< orphan*/  mnt_activevnodelistsize; int /*<<< orphan*/  mnt_activevnodelist; int /*<<< orphan*/  mnt_nvnodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MNTK_UNMOUNT ; 
 int MNTK_UNMOUNTF ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_ACTIVE ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct vnode*,char*) ; 
 int VV_FORCEINSMQ ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_actfreelist ; 
 int /*<<< orphan*/  v_nmntvnodes ; 

int
FUNC12(struct vnode *vp, struct mount *mp,
	void (*dtr)(struct vnode *, void *), void *dtr_arg)
{

	FUNC1(vp->v_mount == NULL,
		("insmntque: vnode already on per mount vnode list"));
	FUNC9(mp != NULL, vp, ("Don't call insmntque(foo, NULL)"));
	FUNC0(vp, "insmntque: non-locked vp");

	/*
	 * We acquire the vnode interlock early to ensure that the
	 * vnode cannot be recycled by another process releasing a
	 * holdcnt on it before we get it on both the vnode list
	 * and the active vnode list. The mount mutex protects only
	 * manipulation of the vnode list and the vnode freelist
	 * mutex protects only manipulation of the active vnode list.
	 * Hence the need to hold the vnode interlock throughout.
	 */
	FUNC2(mp);
	FUNC7(vp);
	if (((mp->mnt_kern_flag & MNTK_UNMOUNT) != 0 &&
	    ((mp->mnt_kern_flag & MNTK_UNMOUNTF) != 0 ||
	    mp->mnt_nvnodelistsize == 0)) &&
	    (vp->v_vflag & VV_FORCEINSMQ) == 0) {
		FUNC8(vp);
		FUNC3(mp);
		if (dtr != NULL)
			dtr(vp, dtr_arg);
		return (EBUSY);
	}
	vp->v_mount = mp;
	FUNC4(mp);
	FUNC6(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
	FUNC9(mp->mnt_nvnodelistsize >= 0, vp,
		("neg mount point vnode list size"));
	mp->mnt_nvnodelistsize++;
	FUNC1((vp->v_iflag & VI_ACTIVE) == 0,
	    ("Activating already active vnode"));
	vp->v_iflag |= VI_ACTIVE;
	FUNC10(&mp->mnt_listmtx);
	FUNC5(&mp->mnt_activevnodelist, vp, v_actfreelist);
	mp->mnt_activevnodelistsize++;
	FUNC11(&mp->mnt_listmtx);
	FUNC8(vp);
	FUNC3(mp);
	return (0);
}