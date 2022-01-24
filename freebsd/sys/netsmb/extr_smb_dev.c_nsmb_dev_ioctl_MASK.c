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
typedef  int u_long ;
struct uio {int uio_iovcnt; int /*<<< orphan*/  uio_resid; struct thread* uio_td; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_offset; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct smbioc_t2rq {int dummy; } ;
struct smbioc_rw {int /*<<< orphan*/  ioc_cnt; int /*<<< orphan*/  ioc_fh; int /*<<< orphan*/  ioc_offset; int /*<<< orphan*/  ioc_base; } ;
struct smbioc_rq {int dummy; } ;
struct smbioc_ossn {int dummy; } ;
struct smbioc_oshare {int dummy; } ;
struct smbioc_lookup {int dummy; } ;
struct smbioc_flags {void* ioc_level; int ioc_mask; int ioc_flags; } ;
struct TYPE_3__ {int co_flags; } ;
struct smb_vc {TYPE_1__ obj; } ;
struct TYPE_4__ {int co_flags; } ;
struct smb_share {TYPE_2__ obj; } ;
struct smb_dev {struct smb_share* sd_share; void* sd_level; struct smb_vc* sd_vc; } ;
struct smb_cred {int dummy; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int EISCONN ; 
 int ENODEV ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  M_NSMBDEV ; 
 int /*<<< orphan*/  M_WAITOK ; 
#define  SMBIOC_LOOKUP 135 
#define  SMBIOC_OPENSESSION 134 
#define  SMBIOC_OPENSHARE 133 
#define  SMBIOC_READ 132 
#define  SMBIOC_REQUEST 131 
#define  SMBIOC_SETFLAGS 130 
#define  SMBIOC_T2RQ 129 
#define  SMBIOC_WRITE 128 
 void* SMBL_SHARE ; 
 void* SMBL_VC ; 
 int SMBS_PERMANENT ; 
 int SMBV_PERMANENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_cred*,int /*<<< orphan*/ ) ; 
 struct smb_cred* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_cred*,struct thread*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct smb_share*,int /*<<< orphan*/ ,struct uio*,struct smb_cred*) ; 
 int FUNC7 (struct smb_share*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_share*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_share*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_share*) ; 
 int FUNC12 (struct smbioc_lookup*,struct smb_cred*,struct smb_vc**,struct smb_share**) ; 
 int FUNC13 (struct smbioc_ossn*,struct smb_cred*,struct smb_vc**) ; 
 int FUNC14 (struct smb_vc*,struct smbioc_oshare*,struct smb_cred*,struct smb_share**) ; 
 int FUNC15 (struct smb_share*,struct smbioc_rq*,struct smb_cred*) ; 
 int FUNC16 (struct smb_share*,struct smbioc_t2rq*,struct smb_cred*) ; 
 int FUNC17 (struct smb_vc*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC18 (struct smb_vc*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC19 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC20 (struct smb_vc*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC21 (struct smb_vc*) ; 
 int FUNC22 (struct smb_share*,int /*<<< orphan*/ ,struct uio*,struct smb_cred*) ; 

__attribute__((used)) static int
FUNC23(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
	struct smb_dev *sdp;
	struct smb_vc *vcp;
	struct smb_share *ssp;
	struct smb_cred *scred;
	int error = 0;

	error = FUNC2((void **)&sdp);
	if (error)
		return (error);
	scred = FUNC4(sizeof(struct smb_cred), M_NSMBDEV, M_WAITOK);
	FUNC0();
	FUNC5(scred, td, NULL);
	switch (cmd) {
	    case SMBIOC_OPENSESSION:
		if (sdp->sd_vc) {
			error = EISCONN;
			goto out;
		}
		error = FUNC13((struct smbioc_ossn*)data,
		    scred, &vcp);
		if (error)
			break;
		sdp->sd_vc = vcp;
		FUNC21(vcp);
		sdp->sd_level = SMBL_VC;
		break;
	    case SMBIOC_OPENSHARE:
		if (sdp->sd_share) {
			error = EISCONN;
			goto out;
		}
		if (sdp->sd_vc == NULL) {
			error = ENOTCONN;
			goto out;
		}
		error = FUNC14(sdp->sd_vc,
		    (struct smbioc_oshare*)data, scred, &ssp);
		if (error)
			break;
		sdp->sd_share = ssp;
		FUNC11(ssp);
		sdp->sd_level = SMBL_SHARE;
		break;
	    case SMBIOC_REQUEST:
		if (sdp->sd_share == NULL) {
			error = ENOTCONN;
			goto out;
		}
		error = FUNC15(sdp->sd_share,
		    (struct smbioc_rq*)data, scred);
		break;
	    case SMBIOC_T2RQ:
		if (sdp->sd_share == NULL) {
			error = ENOTCONN;
			goto out;
		}
		error = FUNC16(sdp->sd_share,
		    (struct smbioc_t2rq*)data, scred);
		break;
	    case SMBIOC_SETFLAGS: {
		struct smbioc_flags *fl = (struct smbioc_flags*)data;
		int on;
	
		if (fl->ioc_level == SMBL_VC) {
			if (fl->ioc_mask & SMBV_PERMANENT) {
				on = fl->ioc_flags & SMBV_PERMANENT;
				if ((vcp = sdp->sd_vc) == NULL) {
					error = ENOTCONN;
					goto out;
				}
				error = FUNC17(vcp, scred);
				if (error)
					break;
				if (on && (vcp->obj.co_flags & SMBV_PERMANENT) == 0) {
					vcp->obj.co_flags |= SMBV_PERMANENT;
					FUNC19(vcp);
				} else if (!on && (vcp->obj.co_flags & SMBV_PERMANENT)) {
					vcp->obj.co_flags &= ~SMBV_PERMANENT;
					FUNC20(vcp, scred);
				}
				FUNC18(vcp, scred);
			} else
				error = EINVAL;
		} else if (fl->ioc_level == SMBL_SHARE) {
			if (fl->ioc_mask & SMBS_PERMANENT) {
				on = fl->ioc_flags & SMBS_PERMANENT;
				if ((ssp = sdp->sd_share) == NULL) {
					error = ENOTCONN;
					goto out;
				}
				error = FUNC7(ssp, scred);
				if (error)
					break;
				if (on && (ssp->obj.co_flags & SMBS_PERMANENT) == 0) {
					ssp->obj.co_flags |= SMBS_PERMANENT;
					FUNC9(ssp);
				} else if (!on && (ssp->obj.co_flags & SMBS_PERMANENT)) {
					ssp->obj.co_flags &= ~SMBS_PERMANENT;
					FUNC10(ssp, scred);
				}
				FUNC8(ssp, scred);
			} else
				error = EINVAL;
			break;
		} else
			error = EINVAL;
		break;
	    }
	    case SMBIOC_LOOKUP:
		if (sdp->sd_vc || sdp->sd_share) {
			error = EISCONN;
			goto out;
		}
		vcp = NULL;
		ssp = NULL;
		error = FUNC12((struct smbioc_lookup*)data, scred, &vcp, &ssp);
		if (error)
			break;
		if (vcp) {
			sdp->sd_vc = vcp;
			FUNC21(vcp);
			sdp->sd_level = SMBL_VC;
		}
		if (ssp) {
			sdp->sd_share = ssp;
			FUNC11(ssp);
			sdp->sd_level = SMBL_SHARE;
		}
		break;
	    case SMBIOC_READ: case SMBIOC_WRITE: {
		struct smbioc_rw *rwrq = (struct smbioc_rw*)data;
		struct uio auio;
		struct iovec iov;
	
		if ((ssp = sdp->sd_share) == NULL) {
			error = ENOTCONN;
			goto out;
	 	}
		iov.iov_base = rwrq->ioc_base;
		iov.iov_len = rwrq->ioc_cnt;
		auio.uio_iov = &iov;
		auio.uio_iovcnt = 1;
		auio.uio_offset = rwrq->ioc_offset;
		auio.uio_resid = rwrq->ioc_cnt;
		auio.uio_segflg = UIO_USERSPACE;
		auio.uio_rw = (cmd == SMBIOC_READ) ? UIO_READ : UIO_WRITE;
		auio.uio_td = td;
		if (cmd == SMBIOC_READ)
			error = FUNC6(ssp, rwrq->ioc_fh, &auio, scred);
		else
			error = FUNC22(ssp, rwrq->ioc_fh, &auio, scred);
		rwrq->ioc_cnt -= auio.uio_resid;
		break;
	    }
	    default:
		error = ENODEV;
	}
out:
	FUNC3(scred, M_NSMBDEV);
	FUNC1();
	return error;
}