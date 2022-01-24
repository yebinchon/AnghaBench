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
typedef  int u_int8_t ;
typedef  void* u_int16_t ;
struct smbnode {void* n_rwstate; void* n_fid; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int EBADRPC ; 
 int /*<<< orphan*/  SMB_COM_OPEN ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int SMB_FA_HIDDEN ; 
 int SMB_FA_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdchain*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct mdchain*,void**) ; 
 int /*<<< orphan*/  FUNC6 (struct mdchain*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct mdchain*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*,struct mbchain**) ; 
 int FUNC14 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC16 (struct smb_rq*) ; 
 int FUNC17 (struct mbchain*,int /*<<< orphan*/ ,struct smbnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC18(struct smbnode *np, int accmode, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int8_t wc;
	u_int16_t fid, wattr, grantedmode;
	int error;

	error = FUNC8(FUNC0(ssp), SMB_COM_OPEN, scred, &rqp);
	if (error)
		return (error);
	FUNC13(rqp, &mbp);
	FUNC16(rqp);
	FUNC2(mbp, accmode);
	FUNC2(mbp, SMB_FA_SYSTEM | SMB_FA_HIDDEN);
	FUNC15(rqp);
	FUNC10(rqp);
	FUNC3(mbp, SMB_DT_ASCII);
	do {
		error = FUNC17(mbp, FUNC1(ssp), np, NULL, 0);
		if (error)
			break;
		FUNC9(rqp);
		error = FUNC14(rqp);
		if (error)
			break;
		FUNC12(rqp, &mdp);
		if (FUNC7(mdp, &wc) != 0 || wc != 7) {
			error = EBADRPC;
			break;
		}
		FUNC4(mdp, &fid);
		FUNC5(mdp, &wattr);
		FUNC6(mdp, NULL);	/* mtime */
		FUNC6(mdp, NULL);	/* fsize */
		FUNC5(mdp, &grantedmode);
		/*
		 * TODO: refresh attributes from this reply
		 */
	} while(0);
	FUNC11(rqp);
	if (error)
		return error;
	np->n_fid = fid;
	np->n_rwstate = grantedmode;
	return 0;
}