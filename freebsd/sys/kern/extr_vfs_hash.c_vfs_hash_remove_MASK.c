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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v_hashlist ; 
 int /*<<< orphan*/  vfs_hash_lock ; 

void
FUNC3(struct vnode *vp)
{

	FUNC1(&vfs_hash_lock);
	FUNC0(vp, v_hashlist);
	FUNC2(&vfs_hash_lock);
}