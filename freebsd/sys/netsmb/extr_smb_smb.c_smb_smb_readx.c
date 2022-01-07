
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct uio {int uio_offset; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
typedef int fid ;
typedef int caddr_t ;
struct TYPE_2__ {int vc_rxmax; } ;


 int EBADRPC ;
 int MB_MSYSTEM ;
 int SMB_COM_READ_ANDX ;
 int SMB_HDRLEN ;
 int SSTOCP (struct smb_share*) ;
 TYPE_1__* SSTOVC (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint32le (struct mbchain*,int) ;
 int mb_put_uint8 (struct mbchain*,int) ;
 int md_get_mem (struct mdchain*,int *,int,int ) ;
 int md_get_uint16le (struct mdchain*,int*) ;
 int md_get_uint8 (struct mdchain*,int*) ;
 int md_get_uio (struct mdchain*,struct uio*,int) ;
 int min (int ,int) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getreply (struct smb_rq*,struct mdchain**) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;

__attribute__((used)) static __inline int
smb_smb_readx(struct smb_share *ssp, u_int16_t fid, int *len, int *rresid,
       struct uio *uio, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct mbchain *mbp;
 struct mdchain *mdp;
 u_int8_t wc;
 int error;
 u_int16_t residhi, residlo, off, doff;
 u_int32_t resid;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_READ_ANDX, scred, &rqp);
 if (error)
  return error;
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_uint8(mbp, 0xff);
 mb_put_uint8(mbp, 0);
 mb_put_uint16le(mbp, 0);
 mb_put_mem(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
 mb_put_uint32le(mbp, uio->uio_offset);
 *len = min(SSTOVC(ssp)->vc_rxmax, *len);
 mb_put_uint16le(mbp, *len);
 mb_put_uint16le(mbp, *len);
 mb_put_uint32le(mbp, (unsigned)*len >> 16);
 mb_put_uint16le(mbp, *len);
 mb_put_uint32le(mbp, uio->uio_offset >> 32);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 smb_rq_bend(rqp);
 do {
  error = smb_rq_simple(rqp);
  if (error)
   break;
  smb_rq_getreply(rqp, &mdp);
  off = SMB_HDRLEN;
  md_get_uint8(mdp, &wc);
  off++;
  if (wc != 12) {
   error = EBADRPC;
   break;
  }
  md_get_uint8(mdp, ((void*)0));
  off++;
  md_get_uint8(mdp, ((void*)0));
  off++;
  md_get_uint16le(mdp, ((void*)0));
  off += 2;
  md_get_uint16le(mdp, ((void*)0));
  off += 2;
  md_get_uint16le(mdp, ((void*)0));
  off += 2;
  md_get_uint16le(mdp, ((void*)0));
  off += 2;
  md_get_uint16le(mdp, &residlo);
  off += 2;
  md_get_uint16le(mdp, &doff);
  off += 2;
  md_get_uint16le(mdp, &residhi);
  off += 2;
  resid = (residhi << 16) | residlo;
  md_get_mem(mdp, ((void*)0), 4 * 2, MB_MSYSTEM);
  off += 4*2;
  md_get_uint16le(mdp, ((void*)0));
  off += 2;
  if (doff > off)
   md_get_mem(mdp, ((void*)0), doff - off, MB_MSYSTEM);
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
 return (error);
}
