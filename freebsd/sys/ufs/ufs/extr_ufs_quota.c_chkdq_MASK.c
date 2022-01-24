#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ufs2_daddr_t ;
struct vnode {int v_vflag; } ;
struct ucred {int dummy; } ;
struct inode {struct dquot** i_dquot; scalar_t__ i_gid; scalar_t__ i_uid; } ;
struct dquot {scalar_t__ dq_curblocks; scalar_t__ dq_bsoftlimit; int /*<<< orphan*/  dq_flags; scalar_t__ dq_btime; } ;
struct TYPE_6__ {scalar_t__* um_btime; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_mntonname; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 int CHOWN ; 
 int /*<<< orphan*/  FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC1 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC2 (struct dquot*,scalar_t__,char*) ; 
 int /*<<< orphan*/  DQ_BLKS ; 
 int /*<<< orphan*/  DQ_MOD ; 
 int FORCE ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 struct vnode* FUNC4 (struct inode*) ; 
 TYPE_2__* FUNC5 (struct inode*) ; 
 int MAXQUOTAS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct ucred* NOCRED ; 
 struct dquot* NODQUOT ; 
 scalar_t__ PINOD ; 
 int /*<<< orphan*/  PRIV_VFS_EXCEEDQUOTA ; 
 int VV_SYSTEM ; 
 int FUNC7 (struct inode*,scalar_t__,struct ucred*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * quotatypes ; 
 scalar_t__ time_second ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct inode *ip, ufs2_daddr_t change, struct ucred *cred, int flags)
{
	struct dquot *dq;
	ufs2_daddr_t ncurblocks;
	struct vnode *vp = FUNC4(ip);
	int i, error, warn, do_check;

	FUNC6(cred != NOCRED || (flags & FORCE) != 0);
	/*
	 * Disk quotas must be turned off for system files.  Currently
	 * snapshot and quota files.
	 */
	if ((vp->v_vflag & VV_SYSTEM) != 0)
		return (0);
	/*
	 * XXX: Turn off quotas for files with a negative UID or GID.
	 * This prevents the creation of 100GB+ quota files.
	 */
	if ((int)ip->i_uid < 0 || (int)ip->i_gid < 0)
		return (0);
#ifdef DIAGNOSTIC
	if ((flags & CHOWN) == 0)
		chkdquot(ip);
#endif
	if (change == 0)
		return (0);
	if (change < 0) {
		for (i = 0; i < MAXQUOTAS; i++) {
			if ((dq = ip->i_dquot[i]) == NODQUOT)
				continue;
			FUNC0(dq);
			FUNC2(dq, PINOD+1, "chkdq1");
			ncurblocks = dq->dq_curblocks + change;
			if (ncurblocks >= 0)
				dq->dq_curblocks = ncurblocks;
			else
				dq->dq_curblocks = 0;
			dq->dq_flags &= ~DQ_BLKS;
			dq->dq_flags |= DQ_MOD;
			FUNC1(dq);
		}
		return (0);
	}
	if ((flags & FORCE) == 0 &&
	    FUNC9(cred, PRIV_VFS_EXCEEDQUOTA))
		do_check = 1;
	else
		do_check = 0;
	for (i = 0; i < MAXQUOTAS; i++) {
		if ((dq = ip->i_dquot[i]) == NODQUOT)
			continue;
		warn = 0;
		FUNC0(dq);
		FUNC2(dq, PINOD+1, "chkdq2");
		if (do_check) {
			error = FUNC7(ip, change, cred, i, &warn);
			if (error) {
				/*
				 * Roll back user quota changes when
				 * group quota failed.
				 */
				while (i > 0) {
					--i;
					dq = ip->i_dquot[i];
					if (dq == NODQUOT)
						continue;
					FUNC0(dq);
					FUNC2(dq, PINOD+1, "chkdq3");
					ncurblocks = dq->dq_curblocks - change;
					if (ncurblocks >= 0)
						dq->dq_curblocks = ncurblocks;
					else
						dq->dq_curblocks = 0;
					dq->dq_flags &= ~DQ_BLKS;
					dq->dq_flags |= DQ_MOD;
					FUNC1(dq);
				}
				return (error);
			}
		}
		/* Reset timer when crossing soft limit */
		if (dq->dq_curblocks + change >= dq->dq_bsoftlimit &&
		    dq->dq_curblocks < dq->dq_bsoftlimit)
			dq->dq_btime = time_second + FUNC3(ip)->um_btime[i];
		dq->dq_curblocks += change;
		dq->dq_flags |= DQ_MOD;
		FUNC1(dq);
		if (warn)
			FUNC10("\n%s: warning, %s disk quota exceeded\n",
			    FUNC5(ip)->mnt_stat.f_mntonname,
			    quotatypes[i]);
	}
	return (0);
}