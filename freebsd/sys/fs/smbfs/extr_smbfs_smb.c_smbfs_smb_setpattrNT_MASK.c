#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct TYPE_4__ {int sv_tz; } ;
struct smb_vc {TYPE_2__ vc_sopt; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; int t2_maxdcount; struct mbchain t2_tdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_SET_FILE_BASIC_INFO ; 
 int /*<<< orphan*/  SMB_TRANS2_SET_PATH_INFORMATION ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 struct smb_vc* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_t2rq**) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_t2rq*) ; 
 int FUNC8 (struct smb_t2rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct timespec*,int,scalar_t__*) ; 
 int FUNC10 (struct mbchain*,struct smb_vc*,struct smbnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC11(struct smbnode *np, u_short attr, struct timespec *mtime,
	struct timespec *atime, struct smb_cred *scred)
{
	struct smb_t2rq *t2p;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct smb_vc *vcp = FUNC1(ssp);
	struct mbchain *mbp;
	int64_t tm;
	int error, tzoff;

	error = FUNC6(FUNC0(ssp), SMB_TRANS2_SET_PATH_INFORMATION,
	    scred, &t2p);
	if (error)
		return error;
	mbp = &t2p->t2_tparam;
	FUNC2(mbp);
	FUNC4(mbp, SMB_SET_FILE_BASIC_INFO);
	FUNC5(mbp, 0);		/* MBZ */
	/* mb_put_uint8(mbp, SMB_DT_ASCII); specs incorrect */
	error = FUNC10(mbp, vcp, np, NULL, 0);
	if (error) {
		FUNC7(t2p);
		return error;
	}
	tzoff = vcp->vc_sopt.sv_tz;
	mbp = &t2p->t2_tdata;
	FUNC2(mbp);
	FUNC3(mbp, 0);		/* creation time */
	if (atime) {
		FUNC9(atime, tzoff, &tm);
	} else
		tm = 0;
	FUNC3(mbp, tm);
	if (mtime) {
		FUNC9(mtime, tzoff, &tm);
	} else
		tm = 0;
	FUNC3(mbp, tm);
	FUNC3(mbp, tm);		/* change time */
	FUNC5(mbp, attr);		/* attr */
	t2p->t2_maxpcount = 24;
	t2p->t2_maxdcount = 56;
	error = FUNC8(t2p);
	FUNC7(t2p);
	return error;
}