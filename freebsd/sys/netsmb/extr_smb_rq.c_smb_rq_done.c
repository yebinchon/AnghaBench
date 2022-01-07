
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rq {int sr_flags; int sr_slock; int sr_rp; int sr_rq; } ;


 int M_SMBRQ ;
 int SMBR_ALLOCED ;
 int free (struct smb_rq*,int ) ;
 int mb_done (int *) ;
 int md_done (int *) ;
 int smb_sl_destroy (int *) ;

void
smb_rq_done(struct smb_rq *rqp)
{
 mb_done(&rqp->sr_rq);
 md_done(&rqp->sr_rp);
 smb_sl_destroy(&rqp->sr_slock);
 if (rqp->sr_flags & SMBR_ALLOCED)
  free(rqp, M_SMBRQ);
}
