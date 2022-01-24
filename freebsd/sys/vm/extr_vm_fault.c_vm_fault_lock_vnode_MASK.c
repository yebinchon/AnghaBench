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
struct vnode {int dummy; } ;
struct faultstate {struct vnode* vp; TYPE_1__* object; } ;
struct TYPE_2__ {scalar_t__ type; struct vnode* handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int LK_CANRECURSE ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 scalar_t__ OBJT_VNODE ; 
 int FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC5 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int FUNC7 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 

__attribute__((used)) static int
FUNC9(struct faultstate *fs)
{
	struct vnode *vp;
	int error, locked;

	if (fs->object->type != OBJT_VNODE)
		return (KERN_SUCCESS);
	vp = fs->object->handle;
	if (vp == fs->vp) {
		FUNC0(vp, "saved vnode is not locked");
		return (KERN_SUCCESS);
	}

	/*
	 * Perform an unlock in case the desired vnode changed while
	 * the map was unlocked during a retry.
	 */
	FUNC5(fs);

	locked = FUNC2(vp);
	if (locked != LK_EXCLUSIVE)
		locked = LK_SHARED;

	/*
	 * We must not sleep acquiring the vnode lock while we have
	 * the page exclusive busied or the object's
	 * paging-in-progress count incremented.  Otherwise, we could
	 * deadlock.
	 */
	error = FUNC7(vp, locked | LK_CANRECURSE | LK_NOWAIT, curthread);
	if (error == 0) {
		fs->vp = vp;
		return (KERN_SUCCESS);
	}

	FUNC8(vp);
	FUNC3(fs);
	FUNC4(fs);
	error = FUNC7(vp, locked | LK_RETRY | LK_CANRECURSE, curthread);
	FUNC6(vp);
	fs->vp = vp;
	FUNC1(error == 0, ("vm_fault: vget failed %d", error));
	return (KERN_RESOURCE_SHORTAGE);
}