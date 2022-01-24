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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct timespec {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  fid ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  sv_tz; } ;
struct TYPE_4__ {TYPE_1__ vc_sopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_COM_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_2__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rq*,struct mbchain**) ; 
 int FUNC9 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct timespec*,int /*<<< orphan*/ ,scalar_t__*) ; 

int
FUNC13(struct smb_share *ssp, u_int16_t fid, struct timespec *mtime,
	struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	u_long time;
	int error;

	error = FUNC4(FUNC0(ssp), SMB_COM_CLOSE, scred, &rqp);
	if (error)
		return (error);
	FUNC8(rqp, &mbp);
	FUNC11(rqp);
	FUNC2(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
	if (mtime) {
		FUNC12(mtime, FUNC1(ssp)->vc_sopt.sv_tz, &time);
	} else
		time = 0;
	FUNC3(mbp, time);
	FUNC10(rqp);
	FUNC6(rqp);
	FUNC5(rqp);
	error = FUNC9(rqp);
	FUNC7(rqp);
	return error;
}