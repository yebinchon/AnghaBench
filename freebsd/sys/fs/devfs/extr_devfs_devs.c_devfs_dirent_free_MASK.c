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
struct vnode {struct devfs_dirent* v_data; } ;
struct devfs_dirent {struct vnode* de_vnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVFS3 ; 
 int /*<<< orphan*/  devfs_de_interlock ; 
 int /*<<< orphan*/  FUNC0 (struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct devfs_dirent *de)
{
	struct vnode *vp;

	vp = de->de_vnode;
	FUNC1(&devfs_de_interlock);
	if (vp != NULL && vp->v_data == de)
		vp->v_data = NULL;
	FUNC2(&devfs_de_interlock);
	FUNC0(de, M_DEVFS3);
}