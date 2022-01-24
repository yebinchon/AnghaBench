#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_7__ {int sv_tz; } ;
struct TYPE_8__ {TYPE_2__ vc_sopt; } ;
struct TYPE_6__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MZERO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SMB_COM_SET_INFORMATION ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_share*) ; 
 TYPE_3__* FUNC3 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbchain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*,struct mbchain**) ; 
 int FUNC14 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct timespec*,int,scalar_t__*) ; 
 int FUNC18 (struct mbchain*,TYPE_3__*,struct smbnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC19(struct smbnode *np, u_int16_t attr, struct timespec *mtime,
	struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	u_long time;
	int error, svtz;

	error = FUNC9(FUNC2(ssp), SMB_COM_SET_INFORMATION, scred,
	    &rqp);
	if (error)
		return (error);
	svtz = FUNC3(ssp)->vc_sopt.sv_tz;
	FUNC13(rqp, &mbp);
	FUNC16(rqp);
	FUNC6(mbp, attr);
	if (mtime) {
		FUNC17(mtime, svtz, &time);
	} else
		time = 0;
	FUNC7(mbp, time);		/* mtime */
	FUNC4(mbp, NULL, 5 * 2, MB_MZERO);
	FUNC15(rqp);
	FUNC11(rqp);
	FUNC8(mbp, SMB_DT_ASCII);
	do {
		error = FUNC18(mbp, FUNC3(ssp), np, NULL, 0);
		if (error)
			break;
		FUNC8(mbp, SMB_DT_ASCII);
		if (FUNC1(FUNC3(ssp))) {
			FUNC5(mbp);
			FUNC8(mbp, 0);	/* 1st byte of NULL Unicode char */
		}
		FUNC8(mbp, 0);
		FUNC10(rqp);
		error = FUNC14(rqp);
		if (error) {
			FUNC0("smb_rq_simple(rqp) => error %d\n", error);
			break;
		}
	} while(0);
	FUNC12(rqp);
	return error;
}