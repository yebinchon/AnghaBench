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
struct vnode {struct mount* v_mount; } ;
struct mount {int /*<<< orphan*/  mnt_nvnodelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  M_VNODE_MARKER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v_nmntvnodes ; 

void
FUNC7(struct vnode **mvp, struct mount *mp)
{

	if (*mvp == NULL) {
		FUNC1(mp);
		return;
	}

	FUNC6(FUNC2(mp), MA_OWNED);

	FUNC0((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));
	FUNC4(&mp->mnt_nvnodelist, *mvp, v_nmntvnodes);
	FUNC3(mp);
	FUNC1(mp);
	FUNC5(*mvp, M_VNODE_MARKER);
	*mvp = NULL;
}