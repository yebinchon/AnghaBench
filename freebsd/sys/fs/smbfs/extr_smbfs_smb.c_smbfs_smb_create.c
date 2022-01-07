
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int8_t ;
typedef int u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_6__ {int sv_tz; } ;
struct TYPE_7__ {TYPE_2__ vc_sopt; } ;
struct TYPE_5__ {struct smb_share* sm_share; } ;


 int EBADRPC ;
 int SMB_COM_CREATE ;
 int SMB_DT_ASCII ;
 int SMB_FA_ARCHIVE ;
 int SSTOCP (struct smb_share*) ;
 TYPE_3__* SSTOVC (struct smb_share*) ;
 int mb_put_uint16le (struct mbchain*,int ) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int mb_put_uint8 (struct mbchain*,int ) ;
 int md_get_uint16 (struct mdchain*,int *) ;
 int md_get_uint8 (struct mdchain*,int*) ;
 int nanotime (struct timespec*) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getreply (struct smb_rq*,struct mdchain**) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_time_local2server (struct timespec*,int ,int *) ;
 int smbfs_fullpath (struct mbchain*,TYPE_3__*,struct smbnode*,char const*,int) ;
 int smbfs_smb_close (struct smb_share*,int ,struct timespec*,struct smb_cred*) ;

int
smbfs_smb_create(struct smbnode *dnp, const char *name, int nmlen,
 struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct smb_share *ssp = dnp->n_mount->sm_share;
 struct mbchain *mbp;
 struct mdchain *mdp;
 struct timespec ctime;
 u_int8_t wc;
 u_int16_t fid;
 u_long tm;
 int error;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_CREATE, scred, &rqp);
 if (error)
  return (error);
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_uint16le(mbp, SMB_FA_ARCHIVE);
 nanotime(&ctime);
 smb_time_local2server(&ctime, SSTOVC(ssp)->vc_sopt.sv_tz, &tm);
 mb_put_uint32le(mbp, tm);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint8(mbp, SMB_DT_ASCII);
 error = smbfs_fullpath(mbp, SSTOVC(ssp), dnp, name, nmlen);
 if (!error) {
  smb_rq_bend(rqp);
  error = smb_rq_simple(rqp);
  if (!error) {
   smb_rq_getreply(rqp, &mdp);
   md_get_uint8(mdp, &wc);
   if (wc == 1)
    md_get_uint16(mdp, &fid);
   else
    error = EBADRPC;
  }
 }
 smb_rq_done(rqp);
 if (error)
  return error;
 smbfs_smb_close(ssp, fid, &ctime, scred);
 return error;
}
