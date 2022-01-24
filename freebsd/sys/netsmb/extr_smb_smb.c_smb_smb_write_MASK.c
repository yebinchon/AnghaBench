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
typedef  int u_int8_t ;
typedef  int u_int16_t ;
struct uio {int uio_resid; int /*<<< orphan*/  uio_offset; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  fid ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {int sv_caps; } ;
struct TYPE_4__ {int vc_txmax; TYPE_1__ vc_sopt; } ;

/* Variables and functions */
 int EBADRPC ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int SMB_CAP_LARGE_WRITEX ; 
 int /*<<< orphan*/  SMB_COM_WRITE ; 
 int /*<<< orphan*/  SMB_DT_DATA ; 
 int SMB_HDRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_2__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mbchain*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct mdchain*,int*) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*,struct mbchain**) ; 
 int FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_rq*) ; 
 int FUNC19 (struct smb_share*,int,int*,int*,struct uio*,struct smb_cred*) ; 

__attribute__((used)) static __inline int
FUNC20(struct smb_share *ssp, u_int16_t fid, int *len, int *rresid,
	struct uio *uio, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int16_t resid;
	u_int8_t wc;
	int error, blksz;

	if (*len && FUNC1(ssp)->vc_sopt.sv_caps & SMB_CAP_LARGE_WRITEX)
		return (FUNC19(ssp, fid, len, rresid, uio, scred));
 
	blksz = FUNC1(ssp)->vc_txmax - SMB_HDRLEN - 16;
	if (blksz > 0xffff)
		blksz = 0xffff;

	resid = *len = FUNC9(blksz, *len);

	error = FUNC10(FUNC0(ssp), SMB_COM_WRITE, scred, &rqp);
	if (error)
		return error;
	FUNC15(rqp, &mbp);
	FUNC18(rqp);
	FUNC2(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
	FUNC3(mbp, resid);
	FUNC4(mbp, uio->uio_offset);
	FUNC3(mbp, FUNC9(uio->uio_resid, 0xffff));
	FUNC17(rqp);
	FUNC12(rqp);
	FUNC5(mbp, SMB_DT_DATA);
	FUNC3(mbp, resid);
	do {
		error = FUNC6(mbp, uio, resid);
		if (error)
			break;
		FUNC11(rqp);
		error = FUNC16(rqp);
		if (error)
			break;
		FUNC14(rqp, &mdp);
		FUNC8(mdp, &wc);
		if (wc != 1) {
			error = EBADRPC;
			break;
		}
		FUNC7(mdp, &resid);
		*rresid = resid;
	} while(0);
	FUNC13(rqp);
	return error;
}