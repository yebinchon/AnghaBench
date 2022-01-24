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
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; int /*<<< orphan*/  v_vflag; int /*<<< orphan*/  v_type; } ;
struct mount {struct vnode* mnt_syncer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  VNON ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VV_FORCEINSMQ ; 
 int FUNC3 (char*,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int FUNC4 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  sync_vnode_count ; 
 int /*<<< orphan*/  sync_vnodeops ; 
 long syncdelay ; 
 long syncer_maxdelay ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bufobj*,long) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

void
FUNC12(struct mount *mp)
{
	struct vnode *vp;
	struct bufobj *bo;
	static long start, incr, next;
	int error;

	/* Allocate a new vnode */
	error = FUNC3("syncer", mp, &sync_vnodeops, &vp);
	if (error != 0)
		FUNC7("vfs_allocate_syncvnode: getnewvnode() failed");
	vp->v_type = VNON;
	FUNC9(vp, LK_EXCLUSIVE | LK_RETRY);
	vp->v_vflag |= VV_FORCEINSMQ;
	error = FUNC4(vp, mp);
	if (error != 0)
		FUNC7("vfs_allocate_syncvnode: insmntque() failed");
	vp->v_vflag &= ~VV_FORCEINSMQ;
	FUNC2(vp, 0);
	/*
	 * Place the vnode onto the syncer worklist. We attempt to
	 * scatter them about on the list so that they will go off
	 * at evenly distributed times even if all the filesystems
	 * are mounted at once.
	 */
	next += incr;
	if (next == 0 || next > syncer_maxdelay) {
		start /= 2;
		incr /= 2;
		if (start == 0) {
			start = syncer_maxdelay / 2;
			incr = syncer_maxdelay;
		}
		next = start;
	}
	bo = &vp->v_bufobj;
	FUNC0(bo);
	FUNC10(bo, syncdelay > 0 ? next % syncdelay : 0);
	/* XXX - vn_syncer_add_to_worklist() also grabs and drops sync_mtx. */
	FUNC5(&sync_mtx);
	sync_vnode_count++;
	if (mp->mnt_syncer == NULL) {
		mp->mnt_syncer = vp;
		vp = NULL;
	}
	FUNC6(&sync_mtx);
	FUNC1(bo);
	if (vp != NULL) {
		FUNC9(vp, LK_EXCLUSIVE | LK_RETRY);
		FUNC8(vp);
		FUNC11(vp);
	}
}