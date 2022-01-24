#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  TYPE_1__ fhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 struct mount* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 

struct vnode *
FUNC3(fhandle_t *fhp)
{
	struct mount *mp;
	struct vnode *vp;
	int error;

	mp = FUNC1(&fhp->fh_fsid);
	if (mp == NULL)
		return (NULL);
	error = FUNC0(mp, &fhp->fh_fid, LK_EXCLUSIVE, &vp);
	FUNC2(mp);
	if (error)
		return (NULL);
	return (vp);
}