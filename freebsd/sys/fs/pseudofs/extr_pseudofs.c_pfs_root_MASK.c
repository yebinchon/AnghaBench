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
struct pfs_info {int /*<<< orphan*/  pi_root; } ;
struct mount {scalar_t__ mnt_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_PID ; 
 int FUNC0 (struct mount*,struct vnode**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct mount *mp, int flags, struct vnode **vpp)
{
	struct pfs_info *pi;

	pi = (struct pfs_info *)mp->mnt_data;
	return (FUNC0(mp, vpp, pi->pi_root, NO_PID));
}