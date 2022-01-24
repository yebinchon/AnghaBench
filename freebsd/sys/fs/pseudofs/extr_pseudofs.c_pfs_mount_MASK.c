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
struct statfs {int f_blocks; int f_files; scalar_t__ f_ffree; scalar_t__ f_bavail; scalar_t__ f_bfree; void* f_iosize; void* f_bsize; } ;
struct pfs_info {int /*<<< orphan*/  pi_name; } ;
struct mount {int mnt_flag; struct statfs mnt_stat; struct pfs_info* mnt_data; int /*<<< orphan*/  mnt_kern_flag; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MNTK_NOMSYNC ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_LOCAL ; 
 int MNT_UPDATE ; 
 void* PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct pfs_info *pi, struct mount *mp)
{
	struct statfs *sbp;

	if (mp->mnt_flag & MNT_UPDATE)
		return (EOPNOTSUPP);

	FUNC0(mp);
	mp->mnt_flag |= MNT_LOCAL;
	mp->mnt_kern_flag |= MNTK_NOMSYNC;
	FUNC1(mp);
	mp->mnt_data = pi;
	FUNC2(mp);

	sbp = &mp->mnt_stat;
	FUNC3(mp, pi->pi_name);
	sbp->f_bsize = PAGE_SIZE;
	sbp->f_iosize = PAGE_SIZE;
	sbp->f_blocks = 1;
	sbp->f_bfree = 0;
	sbp->f_bavail = 0;
	sbp->f_files = 1;
	sbp->f_ffree = 0;

	return (0);
}