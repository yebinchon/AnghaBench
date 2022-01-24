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
struct vnode {struct mount* v_mount; int /*<<< orphan*/  v_type; } ;
struct mount {int /*<<< orphan*/  mnt_listmtx; int /*<<< orphan*/  mnt_activevnodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  M_VNODE_MARKER ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct vnode* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMARKER ; 
 struct vnode* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode**,struct mount*) ; 
 struct vnode* FUNC7 (struct vnode**,struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_actfreelist ; 

struct vnode *
FUNC10(struct vnode **mvp, struct mount *mp)
{
	struct vnode *vp;

	*mvp = FUNC5(sizeof(struct vnode), M_VNODE_MARKER, M_WAITOK | M_ZERO);
	FUNC0(mp);
	FUNC2(mp);
	FUNC1(mp);
	(*mvp)->v_type = VMARKER;
	(*mvp)->v_mount = mp;

	FUNC8(&mp->mnt_listmtx);
	vp = FUNC3(&mp->mnt_activevnodelist);
	if (vp == NULL) {
		FUNC9(&mp->mnt_listmtx);
		FUNC6(mvp, mp);
		return (NULL);
	}
	FUNC4(vp, *mvp, v_actfreelist);
	return (FUNC7(mvp, mp));
}