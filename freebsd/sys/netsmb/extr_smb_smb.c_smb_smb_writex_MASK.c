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
typedef  int u_int16_t ;
struct uio {int uio_offset; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  fid ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  vc_wxmax; } ;

/* Variables and functions */
 int EBADRPC ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_COM_WRITE_ANDX ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_1__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int) ; 
 int FUNC6 (struct mbchain*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct mdchain*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*,struct mbchain**) ; 
 int FUNC16 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC17 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_rq*) ; 

__attribute__((used)) static __inline int
FUNC19(struct smb_share *ssp, u_int16_t fid, int *len, int *rresid,
	struct uio *uio, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	struct mdchain *mdp;
	int error;
	u_int8_t wc;
	u_int16_t resid;

	error = FUNC10(FUNC0(ssp), SMB_COM_WRITE_ANDX, scred, &rqp);
	if (error)
		return (error);
	FUNC15(rqp, &mbp);
	FUNC18(rqp);
	FUNC5(mbp, 0xff);	/* no secondary command */
	FUNC5(mbp, 0);		/* MBZ */
	FUNC3(mbp, 0);	/* offset to secondary */
	FUNC2(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
	FUNC4(mbp, uio->uio_offset);
	FUNC4(mbp, 0);	/* MBZ (timeout) */
	FUNC3(mbp, 0);	/* !write-thru */
	FUNC3(mbp, 0);
	*len = FUNC9(FUNC1(ssp)->vc_wxmax, *len);
	FUNC3(mbp, (unsigned)*len >> 16);
	FUNC3(mbp, *len);
	FUNC3(mbp, 64);	/* data offset from header start */
	FUNC4(mbp, uio->uio_offset >> 32);	/* OffsetHigh */
	FUNC17(rqp);
	FUNC12(rqp);
	do {
		FUNC5(mbp, 0xee);	/* mimic xp pad byte! */
		error = FUNC6(mbp, uio, *len);
		if (error)
			break;
		FUNC11(rqp);
		error = FUNC16(rqp);
		if (error)
			break;
		FUNC14(rqp, &mdp);
		FUNC8(mdp, &wc);
		if (wc != 6) {
			error = EBADRPC;
			break;
		}
		FUNC8(mdp, NULL);
		FUNC8(mdp, NULL);
		FUNC7(mdp, NULL);
		FUNC7(mdp, &resid);
		*rresid = resid;
	} while(0);

	FUNC13(rqp);
	return (error);
}