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
typedef  scalar_t__ u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {int /*<<< orphan*/  n_fid; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {int sv_tz; } ;
struct TYPE_6__ {TYPE_2__ vc_sopt; } ;
struct TYPE_4__ {struct smb_share* sm_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SMB_COM_SET_INFORMATION2 ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 TYPE_3__* FUNC2 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*,struct mbchain**) ; 
 int FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct timespec*,int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 

int
FUNC15(struct smbnode *np, struct timespec *mtime,
	struct timespec *atime, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct smb_share *ssp = np->n_mount->sm_share;
	struct mbchain *mbp;
	u_int16_t date, time;
	int error, tzoff;

	error = FUNC6(FUNC1(ssp), SMB_COM_SET_INFORMATION2, scred,
	    &rqp);
	if (error)
		return (error);
	tzoff = FUNC2(ssp)->vc_sopt.sv_tz;
	FUNC10(rqp, &mbp);
	FUNC13(rqp);
	FUNC3(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
	FUNC5(mbp, 0);		/* creation time */

	if (atime)
		FUNC14(atime, tzoff, &date, &time, NULL);
	else
		time = date = 0;
	FUNC4(mbp, date);
	FUNC4(mbp, time);
	if (mtime)
		FUNC14(mtime, tzoff, &date, &time, NULL);
	else
		time = date = 0;
	FUNC4(mbp, date);
	FUNC4(mbp, time);
	FUNC12(rqp);
	FUNC8(rqp);
	FUNC7(rqp);
	error = FUNC11(rqp);
	FUNC0("%d\n", error);
	FUNC9(rqp);
	return error;
}