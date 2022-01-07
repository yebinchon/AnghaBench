
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smbiod {int iod_rqlist; int iod_flags; } ;
struct smb_rq {int sr_flags; scalar_t__ sr_rpgen; scalar_t__ sr_rplast; int sr_lerror; int sr_state; TYPE_1__* sr_vc; } ;
struct TYPE_2__ {struct smbiod* vc_iod; } ;


 int PWAIT ;
 int SMBIODEBUG (char*) ;
 int SMBRQ_SLOCK (struct smb_rq*) ;
 int SMBRQ_SLOCKPTR (struct smb_rq*) ;
 int SMBRQ_SUNLOCK (struct smb_rq*) ;
 int SMBR_INTERNAL ;
 int SMBR_MULTIPACKET ;
 int SMB_IOD_RQLOCK (struct smbiod*) ;
 int SMB_IOD_RQUNLOCK (struct smbiod*) ;
 int TAILQ_INSERT_TAIL (int *,struct smb_rq*,int ) ;
 int TAILQ_REMOVE (int *,struct smb_rq*,int ) ;
 int hz ;
 int msleep (int *,int ,int ,char*,int ) ;
 int smb_iod_recvall (struct smbiod*) ;
 int smb_iod_removerq (struct smb_rq*) ;
 int smb_iod_sendall (struct smbiod*) ;
 int sr_link ;
 int tsleep (int *,int ,char*,int ) ;

int
smb_iod_waitrq(struct smb_rq *rqp)
{
 struct smbiod *iod = rqp->sr_vc->vc_iod;
 int error;

 SMBIODEBUG("\n");
 if (rqp->sr_flags & SMBR_INTERNAL) {
  for (;;) {
   smb_iod_sendall(iod);
   smb_iod_recvall(iod);
   if (rqp->sr_rpgen != rqp->sr_rplast)
    break;
   tsleep(&iod->iod_flags, PWAIT, "90irq", hz);
  }
  smb_iod_removerq(rqp);
  return rqp->sr_lerror;

 }
 SMBRQ_SLOCK(rqp);
 if (rqp->sr_rpgen == rqp->sr_rplast)
  msleep(&rqp->sr_state, SMBRQ_SLOCKPTR(rqp), PWAIT, "90wrq", 0);
 rqp->sr_rplast++;
 SMBRQ_SUNLOCK(rqp);
 error = rqp->sr_lerror;
 if (rqp->sr_flags & SMBR_MULTIPACKET) {




  SMB_IOD_RQLOCK(iod);
  TAILQ_REMOVE(&iod->iod_rqlist, rqp, sr_link);
  TAILQ_INSERT_TAIL(&iod->iod_rqlist, rqp, sr_link);
  SMB_IOD_RQUNLOCK(iod);
 } else
  smb_iod_removerq(rqp);
 return error;
}
