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
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; } ;
struct vnode {struct bufobj v_bufobj; } ;
struct mount {scalar_t__ mnt_secondary_writes; int mnt_secondary_accwrites; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufobj*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int PDROP ; 
 int PUSER ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct mount *mp,
		      struct vnode *devvp,
		      int softdep_depcnt,
		      int softdep_accdepcnt,
		      int secondary_writes,
		      int secondary_accwrites)
{
	struct bufobj *bo;
	int error;
	
	(void) softdep_depcnt,
	(void) softdep_accdepcnt;

	bo = &devvp->v_bufobj;
	FUNC0(bo);

	FUNC3(mp);
	while (mp->mnt_secondary_writes != 0) {
		FUNC2(bo);
		FUNC5(&mp->mnt_secondary_writes, FUNC4(mp),
		    (PUSER - 1) | PDROP, "secwr", 0);
		FUNC1(bo);
		FUNC3(mp);
	}

	/*
	 * Reasons for needing more work before suspend:
	 * - Dirty buffers on devvp.
	 * - Secondary writes occurred after start of vnode sync loop
	 */
	error = 0;
	if (bo->bo_numoutput > 0 ||
	    bo->bo_dirty.bv_cnt > 0 ||
	    secondary_writes != 0 ||
	    mp->mnt_secondary_writes != 0 ||
	    secondary_accwrites != mp->mnt_secondary_accwrites)
		error = EAGAIN;
	FUNC2(bo);
	return (error);
}