#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sv_tz; } ;
struct TYPE_7__ {TYPE_2__ vc_sopt; } ;
struct TYPE_5__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int EBADRPC ; 
 int /*<<< orphan*/  SMB_COM_CREATE ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int /*<<< orphan*/  SMB_FA_ARCHIVE ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_3__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*,struct mbchain**) ; 
 int FUNC14 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct timespec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct mbchain*,TYPE_3__*,struct smbnode*,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct smb_share*,int /*<<< orphan*/ ,struct timespec*,struct smb_cred*) ; 

int
FUNC20(struct smbnode *dnp, const char *name, int nmlen,
	struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = dnp->n_mount->sm_share;
	struct mbchain *mbp;
	struct mdchain *mdp;
	struct timespec ctime;
	u_int8_t wc;
	u_int16_t fid;
	u_long tm;
	int error;

	error = FUNC8(FUNC0(ssp), SMB_COM_CREATE, scred, &rqp);
	if (error)
		return (error);
	FUNC13(rqp, &mbp);
	FUNC16(rqp);
	FUNC2(mbp, SMB_FA_ARCHIVE);		/* attributes  */
	FUNC7(&ctime);
	FUNC17(&ctime, FUNC1(ssp)->vc_sopt.sv_tz, &tm);
	FUNC3(mbp, tm);
	FUNC15(rqp);
	FUNC10(rqp);
	FUNC4(mbp, SMB_DT_ASCII);
	error = FUNC18(mbp, FUNC1(ssp), dnp, name, nmlen);
	if (!error) {
		FUNC9(rqp);
		error = FUNC14(rqp);
		if (!error) {
			FUNC12(rqp, &mdp);
			FUNC6(mdp, &wc);
			if (wc == 1)
				FUNC5(mdp, &fid);
			else
				error = EBADRPC;
		}
	}
	FUNC11(rqp);
	if (error)
		return error;
	FUNC19(ssp, fid, &ctime, scred);
	return error;
}