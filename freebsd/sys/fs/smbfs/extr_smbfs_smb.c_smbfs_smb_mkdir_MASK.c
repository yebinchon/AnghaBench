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
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_2__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_COM_CREATE_DIRECTORY ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*,struct mbchain**) ; 
 int FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int FUNC11 (struct mbchain*,int /*<<< orphan*/ ,struct smbnode*,char const*,int) ; 

int
FUNC12(struct smbnode *dnp, const char *name, int len,
	struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = dnp->n_mount->sm_share;
	struct mbchain *mbp;
	int error;

	error = FUNC3(FUNC0(ssp), SMB_COM_CREATE_DIRECTORY, scred,
	    &rqp);
	if (error)
		return (error);
	FUNC7(rqp, &mbp);
	FUNC10(rqp);
	FUNC9(rqp);
	FUNC5(rqp);
	FUNC2(mbp, SMB_DT_ASCII);
	error = FUNC11(mbp, FUNC1(ssp), dnp, name, len);
	if (!error) {
		FUNC4(rqp);
		error = FUNC8(rqp);
	}
	FUNC6(rqp);
	return error;
}