
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct uio {int uio_resid; int uio_offset; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
typedef int fid ;
typedef int caddr_t ;
struct TYPE_3__ {int sv_caps; } ;
struct TYPE_4__ {int vc_txmax; TYPE_1__ vc_sopt; } ;


 int EBADRPC ;
 int MB_MSYSTEM ;
 int SMB_CAP_LARGE_READX ;
 int SMB_COM_READ ;
 int SMB_HDRLEN ;
 int SSTOCP (struct smb_share*) ;
 TYPE_2__* SSTOVC (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int md_get_mem (struct mdchain*,int *,int,int ) ;
 int md_get_uint16le (struct mdchain*,int*) ;
 int md_get_uint8 (struct mdchain*,int*) ;
 int md_get_uio (struct mdchain*,struct uio*,int) ;
 int min (int,int) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getreply (struct smb_rq*,struct mdchain**) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_smb_readx (struct smb_share*,int,int*,int*,struct uio*,struct smb_cred*) ;

__attribute__((used)) static __inline int
smb_smb_read(struct smb_share *ssp, u_int16_t fid,
 int *len, int *rresid, struct uio *uio, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct mbchain *mbp;
 struct mdchain *mdp;
 u_int16_t resid, bc;
 u_int8_t wc;
 int error, rlen, blksz;

 if (SSTOVC(ssp)->vc_sopt.sv_caps & SMB_CAP_LARGE_READX)
  return (smb_smb_readx(ssp, fid, len, rresid, uio, scred));

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_READ, scred, &rqp);
 if (error)
  return error;

 blksz = SSTOVC(ssp)->vc_txmax - SMB_HDRLEN - 16;
 rlen = *len = min(blksz, *len);

 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_mem(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
 mb_put_uint16le(mbp, rlen);
 mb_put_uint32le(mbp, uio->uio_offset);
 mb_put_uint16le(mbp, min(uio->uio_resid, 0xffff));
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 smb_rq_bend(rqp);
 do {
  error = smb_rq_simple(rqp);
  if (error)
   break;
  smb_rq_getreply(rqp, &mdp);
  md_get_uint8(mdp, &wc);
  if (wc != 5) {
   error = EBADRPC;
   break;
  }
  md_get_uint16le(mdp, &resid);
  md_get_mem(mdp, ((void*)0), 4 * 2, MB_MSYSTEM);
  md_get_uint16le(mdp, &bc);
  md_get_uint8(mdp, ((void*)0));
  md_get_uint16le(mdp, &resid);
  if (resid == 0) {
   *rresid = resid;
   break;
  }
  error = md_get_uio(mdp, uio, resid);
  if (error)
   break;
  *rresid = resid;
 } while(0);
 smb_rq_done(rqp);
 return error;
}
