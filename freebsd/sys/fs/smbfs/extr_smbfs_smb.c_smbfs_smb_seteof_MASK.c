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
struct smbnode {int /*<<< orphan*/  n_fid; TYPE_1__* n_mount; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; scalar_t__ t2_maxdcount; struct mbchain t2_tdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_SET_FILE_END_OF_FILE_INFO ; 
 int /*<<< orphan*/  SMB_TRANS2_SET_FILE_INFORMATION ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_t2rq**) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_t2rq*) ; 
 int FUNC8 (struct smb_t2rq*) ; 

__attribute__((used)) static int
FUNC9(struct smbnode *np, int64_t newsize, struct smb_cred *scred)
{
	struct smb_t2rq *t2p;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	int error;

	error = FUNC6(FUNC0(ssp), SMB_TRANS2_SET_FILE_INFORMATION,
	    scred, &t2p);
	if (error)
		return error;
	mbp = &t2p->t2_tparam;
	FUNC1(mbp);
	FUNC3(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
	FUNC4(mbp, SMB_SET_FILE_END_OF_FILE_INFO);
	FUNC5(mbp, 0);
	mbp = &t2p->t2_tdata;
	FUNC1(mbp);
	FUNC2(mbp, newsize);
	FUNC5(mbp, 0);			/* padding */
	FUNC4(mbp, 0);
	t2p->t2_maxpcount = 2;
	t2p->t2_maxdcount = 0;
	error = FUNC8(t2p);
	FUNC7(t2p);
	return error;
}