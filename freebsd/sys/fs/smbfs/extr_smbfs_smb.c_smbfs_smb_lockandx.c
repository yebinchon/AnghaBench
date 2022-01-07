
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_char ;
struct smbnode {int n_fid; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int caddr_t ;
struct TYPE_2__ {struct smb_share* sm_share; } ;


 int MB_MSYSTEM ;
 int SMB_COM_LOCKING_ANDX ;
 int SMB_LOCKING_ANDX_SHARED_LOCK ;
 int SMB_LOCK_RELEASE ;
 int SMB_LOCK_SHARED ;
 int SSTOCP (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint32le (struct mbchain*,scalar_t__) ;
 int mb_put_uint8 (struct mbchain*,int) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;

__attribute__((used)) static int
smbfs_smb_lockandx(struct smbnode *np, int op, u_int32_t pid, off_t start, off_t end,
 struct smb_cred *scred)
{
 struct smb_share *ssp = np->n_mount->sm_share;
 struct smb_rq *rqp;
 struct mbchain *mbp;
 u_char ltype = 0;
 int error;

 if (op == SMB_LOCK_SHARED)
  ltype |= SMB_LOCKING_ANDX_SHARED_LOCK;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_LOCKING_ANDX, scred, &rqp);
 if (error)
  return (error);
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_uint8(mbp, 0xff);
 mb_put_uint8(mbp, 0);
 mb_put_uint16le(mbp, 0);
 mb_put_mem(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
 mb_put_uint8(mbp, ltype);
 mb_put_uint8(mbp, 0);
 mb_put_uint32le(mbp, 0);
 mb_put_uint16le(mbp, op == SMB_LOCK_RELEASE ? 1 : 0);
 mb_put_uint16le(mbp, op == SMB_LOCK_RELEASE ? 0 : 1);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint16le(mbp, pid);
 mb_put_uint32le(mbp, start);
 mb_put_uint32le(mbp, end - start);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 smb_rq_done(rqp);
 return error;
}
