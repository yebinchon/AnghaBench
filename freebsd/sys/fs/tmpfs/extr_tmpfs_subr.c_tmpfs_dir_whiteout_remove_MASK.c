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
struct tmpfs_dirent {int /*<<< orphan*/ * td_node; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct tmpfs_dirent*) ; 
 struct tmpfs_dirent* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct componentname*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tmpfs_dirent*) ; 

void
FUNC6(struct vnode *dvp, struct componentname *cnp)
{
	struct tmpfs_dirent *de;

	de = FUNC4(FUNC2(dvp), NULL, cnp);
	FUNC0(de != NULL && de->td_node == NULL);
	FUNC3(dvp, de);
	FUNC5(FUNC1(dvp->v_mount), de);
}