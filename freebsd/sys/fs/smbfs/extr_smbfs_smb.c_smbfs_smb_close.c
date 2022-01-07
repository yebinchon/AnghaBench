
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int16_t ;
struct timespec {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef int fid ;
typedef int caddr_t ;
struct TYPE_3__ {int sv_tz; } ;
struct TYPE_4__ {TYPE_1__ vc_sopt; } ;


 int MB_MSYSTEM ;
 int SMB_COM_CLOSE ;
 int SSTOCP (struct smb_share*) ;
 TYPE_2__* SSTOVC (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint32le (struct mbchain*,scalar_t__) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_time_local2server (struct timespec*,int ,scalar_t__*) ;

int
smbfs_smb_close(struct smb_share *ssp, u_int16_t fid, struct timespec *mtime,
 struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct mbchain *mbp;
 u_long time;
 int error;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_CLOSE, scred, &rqp);
 if (error)
  return (error);
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_mem(mbp, (caddr_t)&fid, sizeof(fid), MB_MSYSTEM);
 if (mtime) {
  smb_time_local2server(mtime, SSTOVC(ssp)->vc_sopt.sv_tz, &time);
 } else
  time = 0;
 mb_put_uint32le(mbp, time);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 smb_rq_done(rqp);
 return error;
}
