
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct smbioc_rq {int ioc_cmd; int ioc_twc; int ioc_tbc; int ioc_rwc; int ioc_rpbufsz; int ioc_rbc; int ioc_error; int ioc_serror; int ioc_errclass; scalar_t__ ioc_rpbuf; int ioc_tbytes; int ioc_twords; } ;
struct smb_share {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct smb_rq {int sr_error; int sr_serror; int sr_errclass; struct mdchain sr_rp; struct mbchain sr_rq; } ;
struct smb_cred {int dummy; } ;


 int EBADRPC ;
 int EPERM ;
 int MB_MUSER ;
 int M_SMBTEMP ;
 int M_WAITOK ;
 int SSTOCP (struct smb_share*) ;
 int free (struct smb_rq*,int ) ;
 struct smb_rq* malloc (int,int ,int ) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int md_get_mem (struct mdchain*,scalar_t__,int,int ) ;
 int md_get_uint16le (struct mdchain*,int*) ;
 int md_get_uint8 (struct mdchain*,int*) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_init (struct smb_rq*,int ,int,struct smb_cred*) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;

int
smb_usr_simplerequest(struct smb_share *ssp, struct smbioc_rq *dp,
 struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct mbchain *mbp;
 struct mdchain *mdp;
 u_int8_t wc;
 u_int16_t bc;
 int error;

 switch (dp->ioc_cmd) {
     case 132:
     case 131:
     case 136:
     case 130:
     case 128:
     case 134:
     case 133:
     case 135:
     case 129:
  return EPERM;
 }
 rqp = malloc(sizeof(struct smb_rq), M_SMBTEMP, M_WAITOK);
 error = smb_rq_init(rqp, SSTOCP(ssp), dp->ioc_cmd, scred);
 if (error) {
  free(rqp, M_SMBTEMP);
  return error;
 }
 mbp = &rqp->sr_rq;
 smb_rq_wstart(rqp);
 error = mb_put_mem(mbp, dp->ioc_twords, dp->ioc_twc * 2, MB_MUSER);
 if (error)
  goto bad;
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 error = mb_put_mem(mbp, dp->ioc_tbytes, dp->ioc_tbc, MB_MUSER);
 if (error)
  goto bad;
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 if (error)
  goto bad;
 mdp = &rqp->sr_rp;
 md_get_uint8(mdp, &wc);
 dp->ioc_rwc = wc;
 wc *= 2;
 if (wc > dp->ioc_rpbufsz) {
  error = EBADRPC;
  goto bad;
 }
 error = md_get_mem(mdp, dp->ioc_rpbuf, wc, MB_MUSER);
 if (error)
  goto bad;
 md_get_uint16le(mdp, &bc);
 if ((wc + bc) > dp->ioc_rpbufsz) {
  error = EBADRPC;
  goto bad;
 }
 dp->ioc_rbc = bc;
 error = md_get_mem(mdp, dp->ioc_rpbuf + wc, bc, MB_MUSER);
bad:
 dp->ioc_errclass = rqp->sr_errclass;
 dp->ioc_serror = rqp->sr_serror;
 dp->ioc_error = rqp->sr_error;
 smb_rq_done(rqp);
 free(rqp, M_SMBTEMP);
 return error;

}
