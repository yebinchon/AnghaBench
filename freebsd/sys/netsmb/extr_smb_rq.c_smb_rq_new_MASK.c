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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct smb_vc {int vc_hflags2; int /*<<< orphan*/  vc_hflags; } ;
struct mbchain {int dummy; } ;
struct smb_rq {int sr_mid; void* sr_rquid; void* sr_rqtid; int /*<<< orphan*/ * sr_rqsig; int /*<<< orphan*/  sr_rp; scalar_t__ sr_sendcnt; struct mbchain sr_rq; struct smb_vc* sr_vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_COM_NEGOTIATE ; 
 int /*<<< orphan*/  SMB_COM_TRANSACTION ; 
 int /*<<< orphan*/  SMB_COM_TRANSACTION_SECONDARY ; 
 int SMB_FLAGS2_SECURITY_SIGNATURE ; 
 int SMB_FLAGS2_UNICODE ; 
 int SMB_SIGLEN ; 
 int /*<<< orphan*/  SMB_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (struct mbchain*) ; 
 int FUNC1 (struct mbchain*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tzero ; 

__attribute__((used)) static int
FUNC8(struct smb_rq *rqp, u_char cmd)
{
	struct smb_vc *vcp = rqp->sr_vc;
	struct mbchain *mbp = &rqp->sr_rq;
	int error;
	u_int16_t flags2;

	rqp->sr_sendcnt = 0;
	FUNC0(mbp);
	FUNC7(&rqp->sr_rp);
	error = FUNC1(mbp);
	if (error)
		return error;
	FUNC2(mbp, SMB_SIGNATURE, SMB_SIGLEN, MB_MSYSTEM);
	FUNC5(mbp, cmd);
	FUNC4(mbp, 0);		/* DosError */
	FUNC5(mbp, vcp->vc_hflags);
	flags2 = vcp->vc_hflags2;
	if (cmd == SMB_COM_TRANSACTION || cmd == SMB_COM_TRANSACTION_SECONDARY)
		flags2 &= ~SMB_FLAGS2_UNICODE;
	if (cmd == SMB_COM_NEGOTIATE)
		flags2 &= ~SMB_FLAGS2_SECURITY_SIGNATURE;
	FUNC3(mbp, flags2);
	if ((flags2 & SMB_FLAGS2_SECURITY_SIGNATURE) == 0) {
		FUNC2(mbp, tzero, 12, MB_MSYSTEM);
		rqp->sr_rqsig = NULL;
	} else {
		FUNC3(mbp, 0 /*scred->sc_p->p_pid >> 16*/);
		rqp->sr_rqsig = (u_int8_t *)FUNC6(mbp, 8);
		FUNC3(mbp, 0);
	}
	rqp->sr_rqtid = FUNC6(mbp, sizeof(u_int16_t));
	FUNC3(mbp, 1 /*scred->sc_p->p_pid & 0xffff*/);
	rqp->sr_rquid = FUNC6(mbp, sizeof(u_int16_t));
	FUNC3(mbp, rqp->sr_mid);
	return 0;
}