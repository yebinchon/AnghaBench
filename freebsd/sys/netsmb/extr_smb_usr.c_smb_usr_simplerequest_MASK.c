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
typedef  int u_int8_t ;
typedef  int u_int16_t ;
struct smbioc_rq {int ioc_cmd; int ioc_twc; int ioc_tbc; int ioc_rwc; int ioc_rpbufsz; int ioc_rbc; int /*<<< orphan*/  ioc_error; int /*<<< orphan*/  ioc_serror; int /*<<< orphan*/  ioc_errclass; scalar_t__ ioc_rpbuf; int /*<<< orphan*/  ioc_tbytes; int /*<<< orphan*/  ioc_twords; } ;
struct smb_share {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct smb_rq {int /*<<< orphan*/  sr_error; int /*<<< orphan*/  sr_serror; int /*<<< orphan*/  sr_errclass; struct mdchain sr_rp; struct mbchain sr_rq; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int EBADRPC ; 
 int EPERM ; 
 int /*<<< orphan*/  MB_MUSER ; 
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
#define  SMB_COM_CLOSE_AND_TREE_DISC 136 
#define  SMB_COM_LOGOFF_ANDX 135 
#define  SMB_COM_NEGOTIATE 134 
#define  SMB_COM_SESSION_SETUP_ANDX 133 
#define  SMB_COM_TRANSACTION2 132 
#define  SMB_COM_TRANSACTION2_SECONDARY 131 
#define  SMB_COM_TREE_CONNECT 130 
#define  SMB_COM_TREE_CONNECT_ANDX 129 
#define  SMB_COM_TREE_DISCONNECT 128 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rq*,int /*<<< orphan*/ ) ; 
 struct smb_rq* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mdchain*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int FUNC10 (struct smb_rq*,int /*<<< orphan*/ ,int,struct smb_cred*) ; 
 int FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 

int
FUNC14(struct smb_share *ssp, struct smbioc_rq *dp,
	struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int8_t wc;
	u_int16_t bc;
	int error;

	switch (dp->ioc_cmd) {
	    case SMB_COM_TRANSACTION2:
	    case SMB_COM_TRANSACTION2_SECONDARY:
	    case SMB_COM_CLOSE_AND_TREE_DISC:
	    case SMB_COM_TREE_CONNECT:
	    case SMB_COM_TREE_DISCONNECT:
	    case SMB_COM_NEGOTIATE:
	    case SMB_COM_SESSION_SETUP_ANDX:
	    case SMB_COM_LOGOFF_ANDX:
	    case SMB_COM_TREE_CONNECT_ANDX:
		return EPERM;
	}
	rqp = FUNC2(sizeof(struct smb_rq), M_SMBTEMP, M_WAITOK);
	error = FUNC10(rqp, FUNC0(ssp), dp->ioc_cmd, scred);
	if (error) {
		FUNC1(rqp, M_SMBTEMP);
		return error;
	}
	mbp = &rqp->sr_rq;
	FUNC13(rqp);
	error = FUNC3(mbp, dp->ioc_twords, dp->ioc_twc * 2, MB_MUSER);
	if (error)
		goto bad;
	FUNC12(rqp);
	FUNC8(rqp);
	error = FUNC3(mbp, dp->ioc_tbytes, dp->ioc_tbc, MB_MUSER);
	if (error)
		goto bad;
	FUNC7(rqp);
	error = FUNC11(rqp);
	if (error)
		goto bad;
	mdp = &rqp->sr_rp;
	FUNC6(mdp, &wc);
	dp->ioc_rwc = wc;
	wc *= 2;
	if (wc > dp->ioc_rpbufsz) {
		error = EBADRPC;
		goto bad;
	}
	error = FUNC4(mdp, dp->ioc_rpbuf, wc, MB_MUSER);
	if (error)
		goto bad;
	FUNC5(mdp, &bc);
	if ((wc + bc) > dp->ioc_rpbufsz) {
		error = EBADRPC;
		goto bad;
	}
	dp->ioc_rbc = bc;
	error = FUNC4(mdp, dp->ioc_rpbuf + wc, bc, MB_MUSER);
bad:
	dp->ioc_errclass = rqp->sr_errclass;
	dp->ioc_serror = rqp->sr_serror;
	dp->ioc_error = rqp->sr_error;
	FUNC9(rqp);
	FUNC1(rqp, M_SMBTEMP);
	return error;

}