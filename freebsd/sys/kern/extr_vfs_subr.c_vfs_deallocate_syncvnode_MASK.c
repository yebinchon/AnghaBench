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
struct mount {struct vnode* mnt_syncer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

void
FUNC3(struct mount *mp)
{
	struct vnode *vp;

	FUNC0(&sync_mtx);
	vp = mp->mnt_syncer;
	if (vp != NULL)
		mp->mnt_syncer = NULL;
	FUNC1(&sync_mtx);
	if (vp != NULL)
		FUNC2(vp);
}