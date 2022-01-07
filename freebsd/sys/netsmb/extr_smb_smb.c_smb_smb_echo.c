
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;
struct mbchain {int dummy; } ;
struct smb_rq {struct mbchain sr_rq; } ;
struct smb_cred {int dummy; } ;


 int SMBSDEBUG (char*,int) ;
 int SMB_COM_ECHO ;
 int VCTOCP (struct smb_vc*) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;

int
smb_smb_echo(struct smb_vc *vcp, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct mbchain *mbp;
 int error;

 error = smb_rq_alloc(VCTOCP(vcp), SMB_COM_ECHO, scred, &rqp);
 if (error)
  return error;
 mbp = &rqp->sr_rq;
 smb_rq_wstart(rqp);
 mb_put_uint16le(mbp, 1);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint32le(mbp, 0);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 SMBSDEBUG("%d\n", error);
 smb_rq_done(rqp);
 return error;
}
