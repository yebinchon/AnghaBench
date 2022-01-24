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
struct inode {int i_flag; int /*<<< orphan*/  i_vnode; TYPE_1__* i_e2fs; int /*<<< orphan*/  i_blocks; } ;
typedef  scalar_t__ e4fs_daddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  e2fs_bsize; } ;

/* Variables and functions */
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static e4fs_daddr_t
FUNC3(struct inode *ip)
{
	e4fs_daddr_t blk = FUNC1(ip);
	if (blk) {
		ip->i_blocks += FUNC0(ip->i_e2fs->e2fs_bsize);
		ip->i_flag |= IN_CHANGE | IN_UPDATE;
		FUNC2(ip->i_vnode, 1);
	}

	return (blk);
}