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
struct vnode {int dummy; } ;
struct timespec {int dummy; } ;
struct tmpfs_node {int tn_status; struct timespec tn_ctime; struct timespec tn_mtime; struct timespec tn_atime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  RANDOM_FS_ATIME ; 
 int TMPFS_NODE_ACCESSED ; 
 int TMPFS_NODE_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_node*) ; 
 int TMPFS_NODE_MODIFIED ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*) ; 

void
FUNC6(struct vnode *vp, const struct timespec *acc,
    const struct timespec *mod)
{
	struct tmpfs_node *node;
	struct timespec now;

	FUNC0(vp, "tmpfs_itimes");
	node = FUNC3(vp);

	if ((node->tn_status & (TMPFS_NODE_ACCESSED | TMPFS_NODE_MODIFIED |
	    TMPFS_NODE_CHANGED)) == 0)
		return;

	FUNC5(&now);
	FUNC1(node);
	if (node->tn_status & TMPFS_NODE_ACCESSED) {
		if (acc == NULL)
			 acc = &now;
		node->tn_atime = *acc;
	}
	if (node->tn_status & TMPFS_NODE_MODIFIED) {
		if (mod == NULL)
			mod = &now;
		node->tn_mtime = *mod;
	}
	if (node->tn_status & TMPFS_NODE_CHANGED)
		node->tn_ctime = now;
	node->tn_status &= ~(TMPFS_NODE_ACCESSED | TMPFS_NODE_MODIFIED |
	    TMPFS_NODE_CHANGED);
	FUNC2(node);

	/* XXX: FIX? The entropy here is desirable, but the harvesting may be expensive */
	FUNC4(node, sizeof(*node), RANDOM_FS_ATIME);
}