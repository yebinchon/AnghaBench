
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {scalar_t__ ss_tid; } ;
struct mbchain {int dummy; } ;
struct smb_rq {struct mbchain sr_rq; } ;
struct smb_cred {int dummy; } ;


 int SMBSDEBUG (char*,int) ;
 int SMB_COM_TREE_DISCONNECT ;
 scalar_t__ SMB_TID_UNKNOWN ;
 int SSTOCP (struct smb_share*) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;

int
smb_smb_treedisconnect(struct smb_share *ssp, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct mbchain *mbp;
 int error;

 if (ssp->ss_tid == SMB_TID_UNKNOWN)
  return 0;
 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_TREE_DISCONNECT, scred, &rqp);
 if (error)
  return error;
 mbp = &rqp->sr_rq;
 smb_rq_wstart(rqp);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 SMBSDEBUG("%d\n", error);
 smb_rq_done(rqp);
 ssp->ss_tid = SMB_TID_UNKNOWN;
 return error;
}
