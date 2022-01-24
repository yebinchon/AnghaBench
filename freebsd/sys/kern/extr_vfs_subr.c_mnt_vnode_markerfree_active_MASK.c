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
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  M_VNODE_MARKER ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vnode **mvp, struct mount *mp)
{

	FUNC0((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));

	FUNC1(mp);
	FUNC3(mp);
	FUNC2(mp);
	FUNC4(*mvp, M_VNODE_MARKER);
	*mvp = NULL;
}