
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smbnode {int n_fid; int n_flag; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef int caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;


 int MB_MSYSTEM ;
 int NFLUSHWIRE ;
 int SMB_COM_WRITE ;
 int SMB_DT_DATA ;
 int SSTOCP (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint16le (struct mbchain*,int ) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int mb_put_uint8 (struct mbchain*,int ) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smbfs_smb_seteof (struct smbnode*,scalar_t__,struct smb_cred*) ;

int
smbfs_smb_setfsize(struct smbnode *np, int64_t newsize, struct smb_cred *scred)
{
 struct smb_share *ssp = np->n_mount->sm_share;
 struct smb_rq *rqp;
 struct mbchain *mbp;
 int error;

 if (!smbfs_smb_seteof(np, newsize, scred)) {
  np->n_flag |= NFLUSHWIRE;
  return (0);
 }

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_WRITE, scred, &rqp);
 if (error)
  return (error);
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_mem(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
 mb_put_uint16le(mbp, 0);
 mb_put_uint32le(mbp, (uint32_t)newsize);
 mb_put_uint16le(mbp, 0);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint8(mbp, SMB_DT_DATA);
 mb_put_uint16le(mbp, 0);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 smb_rq_done(rqp);
 return error;
}
