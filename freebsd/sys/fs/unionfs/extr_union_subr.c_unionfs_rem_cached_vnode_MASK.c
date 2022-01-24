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
struct TYPE_2__ {int /*<<< orphan*/ * le_prev; int /*<<< orphan*/ * le_next; } ;
struct unionfs_node {TYPE_1__ un_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct unionfs_node*,int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  un_hash ; 

__attribute__((used)) static void
FUNC4(struct unionfs_node *unp, struct vnode *dvp)
{
	FUNC0((unp != NULL), ("unionfs_rem_cached_vnode: null node"));
	FUNC0((dvp != NULLVP),
	    ("unionfs_rem_cached_vnode: null parent vnode"));
	FUNC0((unp->un_hash.le_prev != NULL),
	    ("unionfs_rem_cached_vnode: null hash"));

	FUNC2(dvp);
	FUNC1(unp, un_hash);
	unp->un_hash.le_next = NULL;
	unp->un_hash.le_prev = NULL;
	FUNC3(dvp);
}