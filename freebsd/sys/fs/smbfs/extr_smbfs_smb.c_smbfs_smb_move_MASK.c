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
typedef  int u_int16_t ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_COM_MOVE ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int SMB_TID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*,struct mbchain**) ; 
 int FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int FUNC12 (struct mbchain*,int /*<<< orphan*/ ,struct smbnode*,char const*,int) ; 

int
FUNC13(struct smbnode *src, struct smbnode *tdnp,
	const char *tname, int tnmlen, u_int16_t flags, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = src->n_mount->sm_share;
	struct mbchain *mbp;
	int error;

	error = FUNC4(FUNC0(ssp), SMB_COM_MOVE, scred, &rqp);
	if (error)
		return (error);
	FUNC8(rqp, &mbp);
	FUNC11(rqp);
	FUNC2(mbp, SMB_TID_UNKNOWN);
	FUNC2(mbp, 0x20);	/* delete target file */
	FUNC2(mbp, flags);
	FUNC10(rqp);
	FUNC6(rqp);
	FUNC3(mbp, SMB_DT_ASCII);
	do {
		error = FUNC12(mbp, FUNC1(ssp), src, NULL, 0);
		if (error)
			break;
		FUNC3(mbp, SMB_DT_ASCII);
		error = FUNC12(mbp, FUNC1(ssp), tdnp, tname, tnmlen);
		if (error)
			break;
		FUNC5(rqp);
		error = FUNC9(rqp);
	} while(0);
	FUNC7(rqp);
	return error;
}