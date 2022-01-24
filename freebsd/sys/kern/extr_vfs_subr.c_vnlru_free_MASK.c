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
struct vfsops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vfsops*) ; 
 int /*<<< orphan*/  vnode_free_list_mtx ; 

void
FUNC3(int count, struct vfsops *mnt_op)
{

	FUNC0(&vnode_free_list_mtx);
	FUNC2(count, mnt_op);
	FUNC1(&vnode_free_list_mtx);
}