
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rq {int sr_flags; TYPE_1__* sr_cred; } ;
struct TYPE_2__ {int scr_td; } ;


 int EINTR ;
 int SMBR_INTR ;
 int smb_td_intr (int ) ;

int
smb_rq_intr(struct smb_rq *rqp)
{
 if (rqp->sr_flags & SMBR_INTR)
  return EINTR;
 return smb_td_intr(rqp->sr_cred->scr_td);
}
