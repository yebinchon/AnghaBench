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
struct TYPE_4__ {int co_flags; } ;
struct TYPE_3__ {int sv_sm; } ;
struct smb_vc {int vc_hflags2; char* vc_srvname; int /*<<< orphan*/  vc_ucs_tolocal; int /*<<< orphan*/  vc_tolocal; int /*<<< orphan*/  vc_ucs_toserver; int /*<<< orphan*/  vc_toserver; TYPE_2__ obj; int /*<<< orphan*/  vc_genid; int /*<<< orphan*/  vc_ch; TYPE_1__ vc_sopt; int /*<<< orphan*/  vc_toupper; int /*<<< orphan*/  vc_cp_tolocal; int /*<<< orphan*/  vc_cp_toserver; } ;
struct smb_share {char* ss_name; int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_vcgenid; int /*<<< orphan*/  ss_tid; int /*<<< orphan*/  ss_type; } ;
struct mbchain {int dummy; } ;
struct smb_rq {int /*<<< orphan*/  sr_rptid; struct mbchain sr_rq; struct smb_vc* sr_vc; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  M_SMBTEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SMBS_CONNECTED ; 
 int SMBV_UNICODE ; 
 int /*<<< orphan*/  SMB_COM_TREE_CONNECT_ANDX ; 
 int SMB_CS_NONE ; 
 int SMB_FLAGS2_UNICODE ; 
 int SMB_MAXPASSWORDLEN ; 
 int SMB_SM_ENCRYPT ; 
 int SMB_SM_USER ; 
 int /*<<< orphan*/  SMB_TID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 struct smb_vc* FUNC2 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbchain*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbchain*,struct smb_vc*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mbchain*,struct smb_vc*,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*) ; 
 int FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC19 (struct smb_share*) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC23(struct smb_share *ssp, struct smb_cred *scred)
{
	struct smb_vc *vcp;
	struct smb_rq rq, *rqp = &rq;
	struct mbchain *mbp;
	char *pp, *pbuf, *encpass;
	int error, plen, caseopt, upper;

	upper = 0;

again:
	/* Disable Unicode for SMB_COM_TREE_CONNECT_ANDX requests */
	if (FUNC2(ssp)->vc_hflags2 & SMB_FLAGS2_UNICODE) {
		vcp = FUNC2(ssp);
		vcp->vc_toserver = vcp->vc_cp_toserver;
		vcp->vc_tolocal = vcp->vc_cp_tolocal;
		vcp->vc_hflags2 &= ~SMB_FLAGS2_UNICODE;
	}

	ssp->ss_tid = SMB_TID_UNKNOWN;
	error = FUNC12(FUNC1(ssp), SMB_COM_TREE_CONNECT_ANDX, scred, &rqp);
	if (error)
		return error;
	vcp = rqp->sr_vc;
	caseopt = SMB_CS_NONE;
	if (vcp->vc_sopt.sv_sm & SMB_SM_USER) {
		plen = 1;
		pp = "";
		pbuf = NULL;
		encpass = NULL;
	} else {
		pbuf = FUNC5(SMB_MAXPASSWORDLEN + 1, M_SMBTEMP, M_WAITOK);
		encpass = FUNC5(24, M_SMBTEMP, M_WAITOK);
		/*
		 * We try w/o uppercasing first so Samba mixed case
		 * passwords work.  If that fails we come back and try
		 * uppercasing to satisfy OS/2 and Windows for Workgroups.
		 */
		if (upper++) {
			FUNC4(vcp->vc_toupper, pbuf,
				      FUNC19(ssp)/*,
				      SMB_MAXPASSWORDLEN*/);
		} else {
			FUNC22(pbuf, FUNC19(ssp),
				SMB_MAXPASSWORDLEN);
			pbuf[SMB_MAXPASSWORDLEN] = '\0';
		}
		if (vcp->vc_sopt.sv_sm & SMB_SM_ENCRYPT) {
			plen = 24;
			FUNC9(pbuf, vcp->vc_ch, encpass);
			pp = encpass;
		} else {
			plen = FUNC21(pbuf) + 1;
			pp = pbuf;
		}
	}
	mbp = &rqp->sr_rq;
	FUNC18(rqp);
	FUNC8(mbp, 0xff);
	FUNC8(mbp, 0);
	FUNC7(mbp, 0);
	FUNC7(mbp, 0);		/* Flags */
	FUNC7(mbp, plen);
	FUNC17(rqp);
	FUNC14(rqp);
	FUNC6(mbp, pp, plen, MB_MSYSTEM);
	FUNC10(mbp, vcp, "\\\\", 2, caseopt);
	pp = vcp->vc_srvname;
	FUNC10(mbp, vcp, pp, FUNC21(pp), caseopt);
	FUNC10(mbp, vcp, "\\", 1, caseopt);
	pp = ssp->ss_name;
	FUNC11(mbp, vcp, pp, caseopt);
	pp = FUNC20(ssp->ss_type);
	FUNC11(mbp, vcp, pp, caseopt);
	FUNC13(rqp);
	error = FUNC16(rqp);
	FUNC0("%d\n", error);
	if (error)
		goto bad;
	ssp->ss_tid = rqp->sr_rptid;
	ssp->ss_vcgenid = vcp->vc_genid;
	ssp->ss_flags |= SMBS_CONNECTED;
	/*
	 * If the server can speak Unicode then switch
	 * our converters to do Unicode <--> Local
	 */
	if (vcp->obj.co_flags & SMBV_UNICODE) {
		vcp->vc_toserver = vcp->vc_ucs_toserver;
		vcp->vc_tolocal = vcp->vc_ucs_tolocal;
		vcp->vc_hflags2 |= SMB_FLAGS2_UNICODE;
	}
bad:
	if (encpass)
		FUNC3(encpass, M_SMBTEMP);
	if (pbuf)
		FUNC3(pbuf, M_SMBTEMP);
	FUNC15(rqp);
	if (error && upper == 1)
		goto again;
	return error;
}