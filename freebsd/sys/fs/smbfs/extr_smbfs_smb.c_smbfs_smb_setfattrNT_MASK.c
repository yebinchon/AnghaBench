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
typedef  int /*<<< orphan*/  u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {int /*<<< orphan*/  n_fid; TYPE_1__* n_mount; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; scalar_t__ t2_maxdcount; struct mbchain t2_tdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {int sv_tz; } ;
struct TYPE_6__ {TYPE_2__ vc_sopt; } ;
struct TYPE_4__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_SET_FILE_BASIC_INFO ; 
 int /*<<< orphan*/  SMB_TRANS2_SET_FILE_INFORMATION ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_3__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_t2rq**) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_t2rq*) ; 
 int FUNC9 (struct smb_t2rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,int,scalar_t__*) ; 

int
FUNC11(struct smbnode *np, u_int16_t attr, struct timespec *mtime,
	struct timespec *atime, struct smb_cred *scred)
{
	struct smb_t2rq *t2p;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	int64_t tm;
	int error, svtz;

	error = FUNC7(FUNC0(ssp), SMB_TRANS2_SET_FILE_INFORMATION,
	    scred, &t2p);
	if (error)
		return error;
	svtz = FUNC1(ssp)->vc_sopt.sv_tz;
	mbp = &t2p->t2_tparam;
	FUNC2(mbp);
	FUNC4(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
	FUNC5(mbp, SMB_SET_FILE_BASIC_INFO);
	FUNC6(mbp, 0);
	mbp = &t2p->t2_tdata;
	FUNC2(mbp);
	FUNC3(mbp, 0);		/* creation time */
	if (atime) {
		FUNC10(atime, svtz, &tm);
	} else
		tm = 0;
	FUNC3(mbp, tm);
	if (mtime) {
		FUNC10(mtime, svtz, &tm);
	} else
		tm = 0;
	FUNC3(mbp, tm);
	FUNC3(mbp, tm);		/* change time */
	FUNC5(mbp, attr);
	FUNC6(mbp, 0);			/* padding */
	FUNC5(mbp, 0);
	t2p->t2_maxpcount = 2;
	t2p->t2_maxdcount = 0;
	error = FUNC9(t2p);
	FUNC8(t2p);
	return error;
}