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
struct vnode {int /*<<< orphan*/  v_rl; int /*<<< orphan*/  v_cache_dst; int /*<<< orphan*/  v_cache_src; int /*<<< orphan*/  v_bufobj; int /*<<< orphan*/ * v_vnlock; int /*<<< orphan*/  v_interlock; int /*<<< orphan*/  v_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LK_IS_VNODE ; 
 int LK_NOSHARE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  PVFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLKTIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(void *mem, int size, int flags)
{
	struct vnode *vp;

	vp = mem;
	FUNC3(vp, size);
	/*
	 * Setup locks.
	 */
	vp->v_vnlock = &vp->v_lock;
	FUNC5(&vp->v_interlock, "vnode interlock", NULL, MTX_DEF);
	/*
	 * By default, don't allow shared locks unless filesystems opt-in.
	 */
	FUNC4(vp->v_vnlock, PVFS, "vnode", VLKTIMEOUT,
	    LK_NOSHARE | LK_IS_VNODE);
	/*
	 * Initialize bufobj.
	 */
	FUNC2(&vp->v_bufobj, vp);
	/*
	 * Initialize namecache.
	 */
	FUNC0(&vp->v_cache_src);
	FUNC1(&vp->v_cache_dst);
	/*
	 * Initialize rangelocks.
	 */
	FUNC6(&vp->v_rl);
	return (0);
}