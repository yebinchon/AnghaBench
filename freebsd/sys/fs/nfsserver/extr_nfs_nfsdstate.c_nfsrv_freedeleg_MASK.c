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
struct nfsstate {int ls_flags; struct nfslockfile* ls_lfp; } ;
struct nfslockfile {scalar_t__ lf_usecount; int /*<<< orphan*/  lf_locallock_lck; int /*<<< orphan*/  lf_rollback; int /*<<< orphan*/  lf_locallock; int /*<<< orphan*/  lf_deleg; int /*<<< orphan*/  lf_lock; int /*<<< orphan*/  lf_open; } ;
struct TYPE_2__ {int /*<<< orphan*/  srvdelegates; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDSTATE ; 
 int NFSLCK_DELEGWRITE ; 
 int /*<<< orphan*/  FUNC2 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ls_file ; 
 int /*<<< orphan*/  ls_hash ; 
 int /*<<< orphan*/  ls_list ; 
 int /*<<< orphan*/  nfsrv_delegatecnt ; 
 int /*<<< orphan*/  FUNC3 (struct nfslockfile*) ; 
 int /*<<< orphan*/  nfsrv_openpluslock ; 
 int /*<<< orphan*/  nfsrv_writedelegcnt ; 
 TYPE_1__ nfsstatsv1 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfsstate *stp)
{
	struct nfslockfile *lfp;

	FUNC1(stp, ls_hash);
	FUNC1(stp, ls_list);
	FUNC1(stp, ls_file);
	if ((stp->ls_flags & NFSLCK_DELEGWRITE) != 0)
		nfsrv_writedelegcnt--;
	lfp = stp->ls_lfp;
	if (FUNC0(&lfp->lf_open) &&
	    FUNC0(&lfp->lf_lock) && FUNC0(&lfp->lf_deleg) &&
	    FUNC0(&lfp->lf_locallock) && FUNC0(&lfp->lf_rollback) &&
	    lfp->lf_usecount == 0 &&
	    FUNC4(&lfp->lf_locallock_lck) == 0)
		FUNC3(lfp);
	FUNC2(stp, M_NFSDSTATE);
	nfsstatsv1.srvdelegates--;
	nfsrv_openpluslock--;
	nfsrv_delegatecnt--;
}