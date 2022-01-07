
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smbfattr {scalar_t__ fa_size; int fa_mtime; int fa_attr; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_6__ {int sv_tz; } ;
struct TYPE_7__ {TYPE_2__ vc_sopt; } ;
struct TYPE_5__ {struct smb_share* sm_share; } ;


 int EBADRPC ;
 int SMB_COM_QUERY_INFORMATION ;
 int SMB_DT_ASCII ;
 int SSTOCP (struct smb_share*) ;
 TYPE_3__* SSTOVC (struct smb_share*) ;
 int mb_put_uint8 (struct mbchain*,int ) ;
 int md_get_uint16le (struct mdchain*,int *) ;
 int md_get_uint32le (struct mdchain*,scalar_t__*) ;
 scalar_t__ md_get_uint8 (struct mdchain*,int*) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getreply (struct smb_rq*,struct mdchain**) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_time_server2local (scalar_t__,int ,int *) ;
 int smbfs_fullpath (struct mbchain*,TYPE_3__*,struct smbnode*,char const*,int) ;

int
smbfs_smb_query_info(struct smbnode *np, const char *name, int len,
       struct smbfattr *fap, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct smb_share *ssp = np->n_mount->sm_share;
 struct mbchain *mbp;
 struct mdchain *mdp;
 u_int8_t wc;
 int error;
 u_int16_t wattr;
 u_int32_t lint;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_QUERY_INFORMATION, scred,
     &rqp);
 if (error)
  return (error);
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint8(mbp, SMB_DT_ASCII);
 do {
  error = smbfs_fullpath(mbp, SSTOVC(ssp), np, name, len);
  if (error)
   break;
  smb_rq_bend(rqp);
  error = smb_rq_simple(rqp);
  if (error)
   break;
  smb_rq_getreply(rqp, &mdp);
  if (md_get_uint8(mdp, &wc) != 0 || wc != 10) {
   error = EBADRPC;
   break;
  }
  md_get_uint16le(mdp, &wattr);
  fap->fa_attr = wattr;






  md_get_uint32le(mdp, &lint);
  if (lint)
   smb_time_server2local(lint, SSTOVC(ssp)->vc_sopt.sv_tz,
           &fap->fa_mtime);
  md_get_uint32le(mdp, &lint);
  fap->fa_size = lint;
 } while(0);
 smb_rq_done(rqp);
 return error;
}
