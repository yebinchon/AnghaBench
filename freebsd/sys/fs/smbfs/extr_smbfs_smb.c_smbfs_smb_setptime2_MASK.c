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
typedef  int u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct TYPE_4__ {int sv_tz; } ;
struct smb_vc {int /*<<< orphan*/  vc_txmax; TYPE_2__ vc_sopt; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; int /*<<< orphan*/  t2_maxdcount; struct mbchain t2_tdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
struct TYPE_3__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int SMB_INFO_STANDARD ; 
 int /*<<< orphan*/  SMB_TRANS2_SET_PATH_INFORMATION ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 struct smb_vc* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_t2rq**) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_t2rq*) ; 
 int FUNC7 (struct smb_t2rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,int,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mbchain*,struct smb_vc*,struct smbnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(struct smbnode *np, struct timespec *mtime,
	struct timespec *atime, int attr, struct smb_cred *scred)
{
	struct smb_t2rq *t2p;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct smb_vc *vcp = FUNC1(ssp);
	struct mbchain *mbp;
	u_int16_t date, time;
	int error, tzoff;

	error = FUNC5(FUNC0(ssp), SMB_TRANS2_SET_PATH_INFORMATION,
	    scred, &t2p);
	if (error)
		return error;
	mbp = &t2p->t2_tparam;
	FUNC2(mbp);
	FUNC3(mbp, SMB_INFO_STANDARD);
	FUNC4(mbp, 0);		/* MBZ */
	/* mb_put_uint8(mbp, SMB_DT_ASCII); specs incorrect */
	error = FUNC9(mbp, vcp, np, NULL, 0);
	if (error) {
		FUNC6(t2p);
		return error;
	}
	tzoff = vcp->vc_sopt.sv_tz;
	mbp = &t2p->t2_tdata;
	FUNC2(mbp);
	FUNC4(mbp, 0);		/* creation time */
	if (atime)
		FUNC8(atime, tzoff, &date, &time, NULL);
	else
		time = date = 0;
	FUNC3(mbp, date);
	FUNC3(mbp, time);
	if (mtime)
		FUNC8(mtime, tzoff, &date, &time, NULL);
	else
		time = date = 0;
	FUNC3(mbp, date);
	FUNC3(mbp, time);
	FUNC4(mbp, 0);		/* file size */
	FUNC4(mbp, 0);		/* allocation unit size */
	FUNC3(mbp, attr);	/* DOS attr */
	FUNC4(mbp, 0);		/* EA size */
	t2p->t2_maxpcount = 5 * 2;
	t2p->t2_maxdcount = vcp->vc_txmax;
	error = FUNC7(t2p);
	FUNC6(t2p);
	return error;
}