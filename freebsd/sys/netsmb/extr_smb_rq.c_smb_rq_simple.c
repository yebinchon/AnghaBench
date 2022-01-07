
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int vc_timo; } ;
struct smb_rq {int sr_flags; int sr_state; int sr_timo; struct smb_vc* sr_vc; } ;


 int EINVAL ;
 int SMBRQ_NOTSENT ;
 int SMBR_NORESTART ;
 int SMBR_RESTART ;
 int SMB_MAXRCN ;
 int smb_rq_enqueue (struct smb_rq*) ;
 int smb_rq_reply (struct smb_rq*) ;

int
smb_rq_simple(struct smb_rq *rqp)
{
 struct smb_vc *vcp = rqp->sr_vc;
 int error = EINVAL, i;

 for (i = 0; i < SMB_MAXRCN; i++) {
  rqp->sr_flags &= ~SMBR_RESTART;
  rqp->sr_timo = vcp->vc_timo;
  rqp->sr_state = SMBRQ_NOTSENT;
  error = smb_rq_enqueue(rqp);
  if (error)
   return error;
  error = smb_rq_reply(rqp);
  if (error == 0)
   break;
  if ((rqp->sr_flags & (SMBR_RESTART | SMBR_NORESTART)) != SMBR_RESTART)
   break;
 }
 return error;
}
