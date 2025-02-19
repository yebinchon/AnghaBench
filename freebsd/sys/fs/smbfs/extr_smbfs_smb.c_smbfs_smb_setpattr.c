
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
struct TYPE_7__ {int sv_tz; } ;
struct TYPE_8__ {TYPE_2__ vc_sopt; } ;
struct TYPE_6__ {struct smb_share* sm_share; } ;


 int MB_MZERO ;
 int SMBERROR (char*,int) ;
 int SMB_COM_SET_INFORMATION ;
 int SMB_DT_ASCII ;
 scalar_t__ SMB_UNICODE_STRINGS (TYPE_3__*) ;
 int SSTOCP (struct smb_share*) ;
 TYPE_3__* SSTOVC (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int *,int,int ) ;
 int mb_put_padbyte (struct mbchain*) ;
 int mb_put_uint16le (struct mbchain*,int ) ;
 int mb_put_uint32le (struct mbchain*,scalar_t__) ;
 int mb_put_uint8 (struct mbchain*,int ) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_time_local2server (struct timespec*,int,scalar_t__*) ;
 int smbfs_fullpath (struct mbchain*,TYPE_3__*,struct smbnode*,int *,int ) ;

int
smbfs_smb_setpattr(struct smbnode *np, u_int16_t attr, struct timespec *mtime,
 struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct smb_share *ssp = np->n_mount->sm_share;
 struct mbchain *mbp;
 u_long time;
 int error, svtz;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_SET_INFORMATION, scred,
     &rqp);
 if (error)
  return (error);
 svtz = SSTOVC(ssp)->vc_sopt.sv_tz;
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_uint16le(mbp, attr);
 if (mtime) {
  smb_time_local2server(mtime, svtz, &time);
 } else
  time = 0;
 mb_put_uint32le(mbp, time);
 mb_put_mem(mbp, ((void*)0), 5 * 2, MB_MZERO);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_uint8(mbp, SMB_DT_ASCII);
 do {
  error = smbfs_fullpath(mbp, SSTOVC(ssp), np, ((void*)0), 0);
  if (error)
   break;
  mb_put_uint8(mbp, SMB_DT_ASCII);
  if (SMB_UNICODE_STRINGS(SSTOVC(ssp))) {
   mb_put_padbyte(mbp);
   mb_put_uint8(mbp, 0);
  }
  mb_put_uint8(mbp, 0);
  smb_rq_bend(rqp);
  error = smb_rq_simple(rqp);
  if (error) {
   SMBERROR("smb_rq_simple(rqp) => error %d\n", error);
   break;
  }
 } while(0);
 smb_rq_done(rqp);
 return error;
}
