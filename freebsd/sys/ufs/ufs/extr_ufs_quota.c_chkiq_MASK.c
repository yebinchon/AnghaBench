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
struct ucred {int dummy; } ;
struct inode {struct dquot** i_dquot; } ;
struct dquot {int dq_curinodes; scalar_t__ dq_isoftlimit; int /*<<< orphan*/  dq_flags; scalar_t__ dq_itime; } ;
struct TYPE_6__ {scalar_t__* um_itime; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_mntonname; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 int CHOWN ; 
 int /*<<< orphan*/  FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC1 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC2 (struct dquot*,scalar_t__,char*) ; 
 int /*<<< orphan*/  DQ_INODS ; 
 int /*<<< orphan*/  DQ_MOD ; 
 int FORCE ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 TYPE_2__* FUNC4 (struct inode*) ; 
 int MAXQUOTAS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct ucred* NOCRED ; 
 struct dquot* NODQUOT ; 
 scalar_t__ PINOD ; 
 int /*<<< orphan*/  PRIV_VFS_EXCEEDQUOTA ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,int,struct ucred*,int,int*) ; 
 scalar_t__ FUNC8 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * quotatypes ; 
 scalar_t__ time_second ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(struct inode *ip, int change, struct ucred *cred, int flags)
{
	struct dquot *dq;
	int i, error, warn, do_check;

	FUNC5(cred != NOCRED || (flags & FORCE) != 0);
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
			FUNC2(dq, PINOD+1, "chkiq1");
			if (dq->dq_curinodes >= -change)
				dq->dq_curinodes += change;
			else
				dq->dq_curinodes = 0;
			dq->dq_flags &= ~DQ_INODS;
			dq->dq_flags |= DQ_MOD;
			FUNC1(dq);
		}
		return (0);
	}
	if ((flags & FORCE) == 0 &&
	    FUNC8(cred, PRIV_VFS_EXCEEDQUOTA))
		do_check = 1;
	else
		do_check = 0;
	for (i = 0; i < MAXQUOTAS; i++) {
		if ((dq = ip->i_dquot[i]) == NODQUOT)
			continue;
		warn = 0;
		FUNC0(dq);
		FUNC2(dq, PINOD+1, "chkiq2");
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
					FUNC2(dq, PINOD+1, "chkiq3");
					if (dq->dq_curinodes >= change)
						dq->dq_curinodes -= change;
					else
						dq->dq_curinodes = 0;
					dq->dq_flags &= ~DQ_INODS;
					dq->dq_flags |= DQ_MOD;
					FUNC1(dq);
				}
				return (error);
			}
		}
		/* Reset timer when crossing soft limit */
		if (dq->dq_curinodes + change >= dq->dq_isoftlimit &&
		    dq->dq_curinodes < dq->dq_isoftlimit)
			dq->dq_itime = time_second + FUNC3(ip)->um_itime[i];
		dq->dq_curinodes += change;
		dq->dq_flags |= DQ_MOD;
		FUNC1(dq);
		if (warn)
			FUNC9("\n%s: warning, %s inode quota exceeded\n",
			    FUNC4(ip)->mnt_stat.f_mntonname,
			    quotatypes[i]);
	}
	return (0);
}