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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct vpollinfo {TYPE_1__ vpi_selinfo; int /*<<< orphan*/  vpi_lock; } ;
struct vnode {struct vpollinfo* v_pollinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vpollinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vpollinfo* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vfs_knl_assert_locked ; 
 int /*<<< orphan*/  vfs_knl_assert_unlocked ; 
 int /*<<< orphan*/  vfs_knllock ; 
 int /*<<< orphan*/  vfs_knlunlock ; 
 int /*<<< orphan*/  vnodepoll_zone ; 

void
FUNC6(struct vnode *vp)
{
	struct vpollinfo *vi;

	if (vp->v_pollinfo != NULL)
		return;
	vi = FUNC5(vnodepoll_zone, M_WAITOK | M_ZERO);
	FUNC4(&vi->vpi_lock, "vnode pollinfo", NULL, MTX_DEF);
	FUNC3(&vi->vpi_selinfo.si_note, vp, vfs_knllock,
	    vfs_knlunlock, vfs_knl_assert_locked, vfs_knl_assert_unlocked);
	FUNC0(vp);
	if (vp->v_pollinfo != NULL) {
		FUNC1(vp);
		FUNC2(vi);
		return;
	}
	vp->v_pollinfo = vi;
	FUNC1(vp);
}