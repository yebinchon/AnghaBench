
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_2__ {struct smb_share* sm_share; } ;


 int SMB_COM_MOVE ;
 int SMB_DT_ASCII ;
 int SMB_TID_UNKNOWN ;
 int SSTOCP (struct smb_share*) ;
 int SSTOVC (struct smb_share*) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint8 (struct mbchain*,int ) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smbfs_fullpath (struct mbchain*,int ,struct smbnode*,char const*,int) ;

int
smbfs_smb_move(struct smbnode *src, struct smbnode *tdnp,
 const char *tname, int tnmlen, u_int16_t flags, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct smb_share *ssp = src->n_mount->sm_share;
 struct mbchain *mbp;
 int error;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_MOVE, scred, &rqp);
 if (error)
  return (error);
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_uint16le(mbp, SMB_TID_UNKNOWN);
 mb_put_uint16le(mbp, 0x20);
 mb_put_uint16le(mbp, flags);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint8(mbp, SMB_DT_ASCII);
 do {
  error = smbfs_fullpath(mbp, SSTOVC(ssp), src, ((void*)0), 0);
  if (error)
   break;
  mb_put_uint8(mbp, SMB_DT_ASCII);
  error = smbfs_fullpath(mbp, SSTOVC(ssp), tdnp, tname, tnmlen);
  if (error)
   break;
  smb_rq_bend(rqp);
  error = smb_rq_simple(rqp);
 } while(0);
 smb_rq_done(rqp);
 return error;
}
