#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  bv_hd; } ;
struct TYPE_7__ {int /*<<< orphan*/  bv_hd; } ;
struct bufobj {int /*<<< orphan*/  bo_numoutput; TYPE_3__ bo_dirty; TYPE_2__ bo_clean; } ;
struct TYPE_6__ {int /*<<< orphan*/  tqe_prev; } ;
struct vnode {int /*<<< orphan*/  v_type; struct bufobj v_bufobj; int /*<<< orphan*/  v_mount; TYPE_1__ v_actfreelist; } ;
struct msdosfsmount {int pm_flags; int /*<<< orphan*/  pm_fatlock; struct msdosfsmount* pm_inusemap; TYPE_5__* pm_dev; struct vnode* pm_devvp; int /*<<< orphan*/  pm_cp; scalar_t__ pm_u2d; scalar_t__ pm_d2u; scalar_t__ pm_u2w; scalar_t__ pm_w2u; } ;
struct mount {int /*<<< orphan*/  mnt_flag; int /*<<< orphan*/ * mnt_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  si_mountpt; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* close ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int ENXIO ; 
 int FORCECLOSE ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  MNT_LOCAL ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int MSDOSFSMNT_KICONV ; 
 int MSDOSFSMNT_RONLY ; 
 int /*<<< orphan*/  M_MSDOSFSFAT ; 
 int /*<<< orphan*/  M_MSDOSFSMNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct msdosfsmount* FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (uintptr_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct msdosfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct msdosfsmount*,int) ; 
 TYPE_4__* msdosfs_iconv ; 
 int FUNC17 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  v_actfreelist ; 
 int FUNC23 (struct mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct vnode*) ; 

__attribute__((used)) static int
FUNC26(struct mount *mp, int mntflags)
{
	struct msdosfsmount *pmp;
	int error, flags;

	error = flags = 0;
	pmp = FUNC6(mp);
	if ((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0)
		error = FUNC17(mp, MNT_WAIT);
	if ((mntflags & MNT_FORCE) != 0)
		flags |= FORCECLOSE;
	else if (error != 0)
		return (error);
	error = FUNC23(mp, 0, flags, curthread);
	if (error != 0 && error != ENXIO)
		return (error);
	if ((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0) {
		error = FUNC16(pmp, 0);
		if (error && error != ENXIO) {
			(void)FUNC16(pmp, 1);
			return (error);
		}
	}
	if (pmp->pm_flags & MSDOSFSMNT_KICONV && msdosfs_iconv) {
		if (pmp->pm_w2u)
			msdosfs_iconv->close(pmp->pm_w2u);
		if (pmp->pm_u2w)
			msdosfs_iconv->close(pmp->pm_u2w);
		if (pmp->pm_d2u)
			msdosfs_iconv->close(pmp->pm_d2u);
		if (pmp->pm_u2d)
			msdosfs_iconv->close(pmp->pm_u2d);
	}

#ifdef MSDOSFS_DEBUG
	{
		struct vnode *vp = pmp->pm_devvp;
		struct bufobj *bo;

		bo = &vp->v_bufobj;
		BO_LOCK(bo);
		VI_LOCK(vp);
		vn_printf(vp,
		    "msdosfs_umount(): just before calling VOP_CLOSE()\n");
		printf("freef %p, freeb %p, mount %p\n",
		    TAILQ_NEXT(vp, v_actfreelist), vp->v_actfreelist.tqe_prev,
		    vp->v_mount);
		printf("cleanblkhd %p, dirtyblkhd %p, numoutput %ld, type %d\n",
		    TAILQ_FIRST(&vp->v_bufobj.bo_clean.bv_hd),
		    TAILQ_FIRST(&vp->v_bufobj.bo_dirty.bv_hd),
		    vp->v_bufobj.bo_numoutput, vp->v_type);
		VI_UNLOCK(vp);
		BO_UNLOCK(bo);
	}
#endif
	FUNC12();
	FUNC14(pmp->pm_cp);
	FUNC13();
	FUNC9((uintptr_t *)&pmp->pm_dev->si_mountpt, 0);
	FUNC25(pmp->pm_devvp);
	FUNC10(pmp->pm_dev);
	FUNC11(pmp->pm_inusemap, M_MSDOSFSFAT);
	FUNC15(&pmp->pm_fatlock);
	FUNC11(pmp, M_MSDOSFSMNT);
	mp->mnt_data = NULL;
	FUNC2(mp);
	mp->mnt_flag &= ~MNT_LOCAL;
	FUNC3(mp);
	return (error);
}