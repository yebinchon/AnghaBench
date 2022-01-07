
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct smb_rq {int sr_vc; int sr_mid; struct smb_cred* sr_cred; scalar_t__ sr_share; int sr_slock; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;


 int SMBM_EXEC ;
 int bzero (struct smb_rq*,int) ;
 int smb_rq_getenv (struct smb_connobj*,int *,scalar_t__*) ;
 int smb_rq_new (struct smb_rq*,int ) ;
 int smb_share_access (scalar_t__,struct smb_cred*,int ) ;
 int smb_sl_init (int *,char*) ;
 int smb_vc_access (int ,struct smb_cred*,int ) ;
 int smb_vc_nextmid (int ) ;

int
smb_rq_init(struct smb_rq *rqp, struct smb_connobj *layer, u_char cmd,
 struct smb_cred *scred)
{
 int error;

 bzero(rqp, sizeof(*rqp));
 smb_sl_init(&rqp->sr_slock, "srslock");
 error = smb_rq_getenv(layer, &rqp->sr_vc, &rqp->sr_share);
 if (error)
  return error;
 error = smb_vc_access(rqp->sr_vc, scred, SMBM_EXEC);
 if (error)
  return error;
 if (rqp->sr_share) {
  error = smb_share_access(rqp->sr_share, scred, SMBM_EXEC);
  if (error)
   return error;
 }
 rqp->sr_cred = scred;
 rqp->sr_mid = smb_vc_nextmid(rqp->sr_vc);
 return smb_rq_new(rqp, cmd);
}
