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
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct tmpfs_node {scalar_t__ tn_size; int tn_status; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ tm_maxfilesize; } ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int TMPFS_NODE_CHANGED ; 
 int TMPFS_NODE_MODIFIED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC1 (struct vnode*) ; 
 int FUNC2 (struct vnode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

int
FUNC4(struct vnode *vp, off_t length)
{
	int error;
	struct tmpfs_node *node;

	node = FUNC1(vp);

	if (length < 0) {
		error = EINVAL;
		goto out;
	}

	if (node->tn_size == length) {
		error = 0;
		goto out;
	}

	if (length > FUNC0(vp->v_mount)->tm_maxfilesize)
		return (EFBIG);

	error = FUNC2(vp, length, FALSE);
	if (error == 0)
		node->tn_status |= TMPFS_NODE_CHANGED | TMPFS_NODE_MODIFIED;

out:
	FUNC3(vp);

	return (error);
}