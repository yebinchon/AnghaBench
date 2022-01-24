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
struct vnode {int v_iflag; struct mount* v_mount; } ;
struct mount {scalar_t__ mnt_activevnodelistsize; scalar_t__ mnt_nvnodelistsize; int /*<<< orphan*/  mnt_nvnodelist; int /*<<< orphan*/  mnt_listmtx; int /*<<< orphan*/  mnt_activevnodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_ACTIVE ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_actfreelist ; 
 int /*<<< orphan*/  v_nmntvnodes ; 

__attribute__((used)) static void
FUNC10(struct vnode *vp)
{
	struct mount *mp;
	int active;

	mp = vp->v_mount;
	if (mp == NULL)
		return;
	FUNC1(mp);
	FUNC5(vp);
	FUNC0(mp->mnt_activevnodelistsize <= mp->mnt_nvnodelistsize,
	    ("Active vnode list size %d > Vnode list size %d",
	     mp->mnt_activevnodelistsize, mp->mnt_nvnodelistsize));
	active = vp->v_iflag & VI_ACTIVE;
	vp->v_iflag &= ~VI_ACTIVE;
	if (active) {
		FUNC8(&mp->mnt_listmtx);
		FUNC4(&mp->mnt_activevnodelist, vp, v_actfreelist);
		mp->mnt_activevnodelistsize--;
		FUNC9(&mp->mnt_listmtx);
	}
	vp->v_mount = NULL;
	FUNC6(vp);
	FUNC7(mp->mnt_nvnodelistsize > 0, vp,
		("bad mount point vnode list size"));
	FUNC4(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
	mp->mnt_nvnodelistsize--;
	FUNC3(mp);
	FUNC2(mp);
}