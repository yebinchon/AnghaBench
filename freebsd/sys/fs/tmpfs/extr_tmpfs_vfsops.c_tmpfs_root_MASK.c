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
struct vnode {int /*<<< orphan*/  v_vflag; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tm_root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int FUNC1 (struct mount*,int /*<<< orphan*/ ,int,struct vnode**) ; 

__attribute__((used)) static int
FUNC2(struct mount *mp, int flags, struct vnode **vpp)
{
	int error;

	error = FUNC1(mp, FUNC0(mp)->tm_root, flags, vpp);
	if (error == 0)
		(*vpp)->v_vflag |= VV_ROOT;
	return (error);
}