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
struct mqfs_info {int /*<<< orphan*/  mi_root; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 struct mqfs_info* FUNC0 (struct mount*) ; 
 int FUNC1 (struct mount*,struct vnode**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mount *mp, int flags, struct vnode **vpp)
{
	struct mqfs_info *mqfs;
	int ret;

	mqfs = FUNC0(mp);
	ret = FUNC1(mp, vpp, mqfs->mi_root);
	return (ret);
}