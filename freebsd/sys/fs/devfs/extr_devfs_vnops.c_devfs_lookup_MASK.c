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
struct vop_lookup_args {TYPE_1__* a_dvp; } ;
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int ENOTDIR ; 
 struct devfs_mount* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vop_lookup_args*,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct vop_lookup_args *ap)
{
	int j;
	struct devfs_mount *dmp;
	int dm_unlock;

	if (FUNC2(ap->a_dvp) != 0)
		return (ENOTDIR);

	dmp = FUNC0(ap->a_dvp->v_mount);
	dm_unlock = 1;
	j = FUNC1(ap, &dm_unlock);
	if (dm_unlock == 1)
		FUNC3(&dmp->dm_lock);
	return (j);
}