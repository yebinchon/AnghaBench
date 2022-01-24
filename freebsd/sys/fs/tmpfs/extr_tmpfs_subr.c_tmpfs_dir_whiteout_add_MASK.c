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
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct tmpfs_dirent {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmpfs_dirent**) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,struct tmpfs_dirent*) ; 

int
FUNC3(struct vnode *dvp, struct componentname *cnp)
{
	struct tmpfs_dirent *de;
	int error;

	error = FUNC1(FUNC0(dvp->v_mount), NULL,
	    cnp->cn_nameptr, cnp->cn_namelen, &de);
	if (error != 0)
		return (error);
	FUNC2(dvp, de);
	return (0);
}