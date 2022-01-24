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
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct uio {int uio_offset; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  fid ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  vc_rxmax; } ;

/* Variables and functions */
 int EBADRPC ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  SMB_COM_READ_ANDX ; 
 int SMB_HDRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 TYPE_1__* FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbchain*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mdchain*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mdchain*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct mdchain*,int*) ; 
 int FUNC9 (struct mdchain*,struct uio*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_cred*,struct smb_rq**) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_rq*,struct mdchain**) ; 
 int /*<<< orphan*/  FUNC16 (struct smb_rq*,struct mbchain**) ; 
 int FUNC17 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC19 (struct smb_rq*) ; 

__attribute__((used)) static __inline int
FUNC20(struct smb_share *ssp, u_int16_t fid, int *len, int *rresid,
	      struct uio *uio, struct smb_cred *scred)
{
	struct smb_rq *rqp;
	struct mbchain *mbp;
	struct mdchain *mdp;
	u_int8_t wc;
	int error;
	u_int16_t residhi, residlo, off, doff;
	u_int32_t resid;

	error = FUNC11(FUNC0(ssp), SMB_COM_READ_ANDX, scred, &rqp);
	if (error)
		return error;
	FUNC16(rqp, &mbp);
	FUNC19(rqp);
	FUNC5(mbp, 0xff);	/* no secondary command */
	FUNC5(mbp, 0);		/* MBZ */
	FUNC3(mbp, 0);	/* offset to secondary */
	FUNC2(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
	FUNC4(mbp, uio->uio_offset);
	*len = FUNC10(FUNC1(ssp)->vc_rxmax, *len);
	FUNC3(mbp, *len);	/* MaxCount */
	FUNC3(mbp, *len);	/* MinCount (only indicates blocking) */
	FUNC4(mbp, (unsigned)*len >> 16);	/* MaxCountHigh */
	FUNC3(mbp, *len);	/* Remaining ("obsolete") */
	FUNC4(mbp, uio->uio_offset >> 32);	/* OffsetHigh */
	FUNC18(rqp);
	FUNC13(rqp);
	FUNC12(rqp);
	do {
		error = FUNC17(rqp);
		if (error)
			break;
		FUNC15(rqp, &mdp);
		off = SMB_HDRLEN;
		FUNC8(mdp, &wc);
		off++;
		if (wc != 12) {
			error = EBADRPC;
			break;
		}
		FUNC8(mdp, NULL);
		off++;
		FUNC8(mdp, NULL);
		off++;
		FUNC7(mdp, NULL);
		off += 2;
		FUNC7(mdp, NULL);
		off += 2;
		FUNC7(mdp, NULL);	/* data compaction mode */
		off += 2;
		FUNC7(mdp, NULL);
		off += 2;
		FUNC7(mdp, &residlo);
		off += 2;
		FUNC7(mdp, &doff);	/* data offset */
		off += 2;
		FUNC7(mdp, &residhi);
		off += 2;
		resid = (residhi << 16) | residlo;
		FUNC6(mdp, NULL, 4 * 2, MB_MSYSTEM);
		off += 4*2;
		FUNC7(mdp, NULL);	/* ByteCount */
		off += 2;
		if (doff > off)	/* pad byte(s)? */
			FUNC6(mdp, NULL, doff - off, MB_MSYSTEM);
		if (resid == 0) {
			*rresid = resid;
			break;
		}
		error = FUNC9(mdp, uio, resid);
		if (error)
			break;
		*rresid = resid;
	} while(0);
	FUNC14(rqp);
	return (error);
}