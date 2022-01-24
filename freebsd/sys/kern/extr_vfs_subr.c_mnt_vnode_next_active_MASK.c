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
struct mount {int /*<<< orphan*/  mnt_listmtx; int /*<<< orphan*/  mnt_activevnodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vnode*,struct vnode*,int /*<<< orphan*/ ) ; 
 struct vnode* FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_ACTIVE ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 scalar_t__ VMARKER ; 
 int /*<<< orphan*/  FUNC7 (struct vnode**,struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,struct mount*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_actfreelist ; 

__attribute__((used)) static struct vnode *
FUNC11(struct vnode **mvp, struct mount *mp)
{
	struct vnode *vp, *nvp;

	FUNC9(&mp->mnt_listmtx, MA_OWNED);
	FUNC1((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));
restart:
	vp = FUNC3(*mvp, v_actfreelist);
	while (vp != NULL) {
		if (vp->v_type == VMARKER) {
			vp = FUNC3(vp, v_actfreelist);
			continue;
		}
		/*
		 * Try-lock because this is the wrong lock order.  If that does
		 * not succeed, drop the mount vnode list lock and try to
		 * reacquire it and the vnode interlock in the right order.
		 */
		if (!FUNC5(vp) &&
		    !FUNC8(*mvp, mp, vp))
			goto restart;
		FUNC1(vp->v_type != VMARKER, ("locked marker %p", vp));
		FUNC1(vp->v_mount == mp || vp->v_mount == NULL,
		    ("alien vnode on the active list %p %p", vp, mp));
		if (vp->v_mount == mp && (vp->v_iflag & VI_DOOMED) == 0)
			break;
		nvp = FUNC3(vp, v_actfreelist);
		FUNC6(vp);
		vp = nvp;
	}
	FUNC4(&mp->mnt_activevnodelist, *mvp, v_actfreelist);

	/* Check if we are done */
	if (vp == NULL) {
		FUNC10(&mp->mnt_listmtx);
		FUNC7(mvp, mp);
		return (NULL);
	}
	FUNC2(&mp->mnt_activevnodelist, vp, *mvp, v_actfreelist);
	FUNC10(&mp->mnt_listmtx);
	FUNC0(vp, "active iter");
	FUNC1((vp->v_iflag & VI_ACTIVE) != 0, ("Non-active vp %p", vp));
	return (vp);
}