
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod {scalar_t__ iod_muxwant; int iod_muxcnt; int iod_rqlist; } ;
struct smb_vc {struct smbiod* vc_iod; } ;
struct smb_rq {int sr_flags; struct smb_vc* sr_vc; } ;


 int PWAIT ;
 int SMBIODEBUG (char*) ;
 int SMBR_INTERNAL ;
 int SMBR_XLOCK ;
 int SMBR_XLOCKWANT ;
 int SMB_IOD_RQLOCK (struct smbiod*) ;
 int SMB_IOD_RQLOCKPTR (struct smbiod*) ;
 int SMB_IOD_RQUNLOCK (struct smbiod*) ;
 int TAILQ_REMOVE (int *,struct smb_rq*,int ) ;
 int msleep (struct smb_rq*,int ,int ,char*,int ) ;
 int sr_link ;
 int wakeup (scalar_t__*) ;

int
smb_iod_removerq(struct smb_rq *rqp)
{
 struct smb_vc *vcp = rqp->sr_vc;
 struct smbiod *iod = vcp->vc_iod;

 SMBIODEBUG("\n");
 if (rqp->sr_flags & SMBR_INTERNAL) {
  SMB_IOD_RQLOCK(iod);
  TAILQ_REMOVE(&iod->iod_rqlist, rqp, sr_link);
  SMB_IOD_RQUNLOCK(iod);
  return 0;
 }
 SMB_IOD_RQLOCK(iod);
 while (rqp->sr_flags & SMBR_XLOCK) {
  rqp->sr_flags |= SMBR_XLOCKWANT;
  msleep(rqp, SMB_IOD_RQLOCKPTR(iod), PWAIT, "90xrm", 0);
 }
 TAILQ_REMOVE(&iod->iod_rqlist, rqp, sr_link);
 iod->iod_muxcnt--;
 if (iod->iod_muxwant) {
  iod->iod_muxwant--;
  wakeup(&iod->iod_muxwant);
 }
 SMB_IOD_RQUNLOCK(iod);
 return 0;
}
