
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct mdchain {int dummy; } ;
struct smb_rq {int sr_serror; int sr_errclass; int sr_rptid; int sr_rpuid; int sr_rppid; int sr_rpmid; TYPE_1__* sr_vc; int sr_rpflags2; int sr_rpflags; int sr_error; struct mdchain sr_rp; } ;
struct TYPE_2__ {int vc_hflags2; } ;


 int SMBSDEBUG (char*,int ,int ,int ,int ,int ,int ) ;
 int SMB_FLAGS2_ERR_STATUS ;
 int SMB_FLAGS2_SECURITY_SIGNATURE ;
 int md_get_uint16le (struct mdchain*,int *) ;
 int md_get_uint32 (struct mdchain*,int *) ;
 int md_get_uint32le (struct mdchain*,int *) ;
 int md_get_uint8 (struct mdchain*,int *) ;
 int smb_iod_waitrq (struct smb_rq*) ;
 int smb_maperror (int ,int ) ;
 int smb_rq_verify (struct smb_rq*) ;

__attribute__((used)) static int
smb_rq_reply(struct smb_rq *rqp)
{
 struct mdchain *mdp = &rqp->sr_rp;
 u_int32_t tdw;
 u_int8_t tb;
 int error, rperror = 0;

 error = smb_iod_waitrq(rqp);
 if (error)
  return error;
 error = md_get_uint32(mdp, &tdw);
 if (error)
  return error;
 error = md_get_uint8(mdp, &tb);
 if (rqp->sr_vc->vc_hflags2 & SMB_FLAGS2_ERR_STATUS) {
  error = md_get_uint32le(mdp, &rqp->sr_error);
 } else {
  error = md_get_uint8(mdp, &rqp->sr_errclass);
  error = md_get_uint8(mdp, &tb);
  error = md_get_uint16le(mdp, &rqp->sr_serror);
  if (!error)
   rperror = smb_maperror(rqp->sr_errclass, rqp->sr_serror);
 }
 error = md_get_uint8(mdp, &rqp->sr_rpflags);
 error = md_get_uint16le(mdp, &rqp->sr_rpflags2);

 error = md_get_uint32(mdp, &tdw);
 error = md_get_uint32(mdp, &tdw);
 error = md_get_uint32(mdp, &tdw);

 error = md_get_uint16le(mdp, &rqp->sr_rptid);
 error = md_get_uint16le(mdp, &rqp->sr_rppid);
 error = md_get_uint16le(mdp, &rqp->sr_rpuid);
 error = md_get_uint16le(mdp, &rqp->sr_rpmid);

 if (error == 0 &&
     (rqp->sr_vc->vc_hflags2 & SMB_FLAGS2_SECURITY_SIGNATURE))
  error = smb_rq_verify(rqp);

 SMBSDEBUG("M:%04x, P:%04x, U:%04x, T:%04x, E: %d:%d\n",
     rqp->sr_rpmid, rqp->sr_rppid, rqp->sr_rpuid, rqp->sr_rptid,
     rqp->sr_errclass, rqp->sr_serror);
 return error ? error : rperror;
}
