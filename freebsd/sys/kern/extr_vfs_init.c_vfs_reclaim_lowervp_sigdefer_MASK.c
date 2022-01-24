#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct mount {TYPE_2__* mnt_vfc; } ;
struct TYPE_4__ {TYPE_1__* vfc_vfsops_sd; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* vfs_reclaim_lowervp ) (struct mount*,struct vnode*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIGDEFERSTOP_SILENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,struct vnode*) ; 

__attribute__((used)) static void
FUNC3(struct mount *mp, struct vnode *vp)
{
	int prev_stops;

	if (*mp->mnt_vfc->vfc_vfsops_sd->vfs_reclaim_lowervp == NULL)
		return;
	prev_stops = FUNC1(SIGDEFERSTOP_SILENT);
	(*mp->mnt_vfc->vfc_vfsops_sd->vfs_reclaim_lowervp)(mp, vp);
	FUNC0(prev_stops);
}