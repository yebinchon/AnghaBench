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
struct ucred {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int i_flag; int /*<<< orphan*/  i_vnode; int /*<<< orphan*/  i_ump; struct m_ext2fs* i_e2fs; } ;
typedef  scalar_t__ e4fs_daddr_t ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int,struct ucred*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static e4fs_daddr_t
FUNC3(struct inode *ip, daddr_t lbn, e4fs_daddr_t pref,
    struct ucred *cred, unsigned long *count, int *perror)
{
	struct m_ext2fs *fs;
	e4fs_daddr_t newblk;

	/*
	 * We will allocate only single block for now.
	 */
	if (*count > 1)
		return (0);

	fs = ip->i_e2fs;
	FUNC0(ip->i_ump);
	*perror = FUNC1(ip, lbn, pref, (int)fs->e2fs_bsize, cred, &newblk);
	if (*perror)
		return (0);

	if (newblk) {
		ip->i_flag |= IN_CHANGE | IN_UPDATE;
		FUNC2(ip->i_vnode, 1);
	}

	return (newblk);
}