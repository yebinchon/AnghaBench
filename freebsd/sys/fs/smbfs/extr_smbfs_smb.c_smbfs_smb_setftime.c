
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {int n_fid; TYPE_1__* n_mount; } ;
struct smb_share {int dummy; } ;
struct smb_rq {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mbchain {int dummy; } ;
typedef int caddr_t ;
struct TYPE_5__ {int sv_tz; } ;
struct TYPE_6__ {TYPE_2__ vc_sopt; } ;
struct TYPE_4__ {struct smb_share* sm_share; } ;


 int MB_MSYSTEM ;
 int SMBSDEBUG (char*,int) ;
 int SMB_COM_SET_INFORMATION2 ;
 int SSTOCP (struct smb_share*) ;
 TYPE_3__* SSTOVC (struct smb_share*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint16le (struct mbchain*,scalar_t__) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_getrequest (struct smb_rq*,struct mbchain**) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_time_unix2dos (struct timespec*,int,scalar_t__*,scalar_t__*,int *) ;

int
smbfs_smb_setftime(struct smbnode *np, struct timespec *mtime,
 struct timespec *atime, struct smb_cred *scred)
{
 struct smb_rq *rqp;
 struct smb_share *ssp = np->n_mount->sm_share;
 struct mbchain *mbp;
 u_int16_t date, time;
 int error, tzoff;

 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_SET_INFORMATION2, scred,
     &rqp);
 if (error)
  return (error);
 tzoff = SSTOVC(ssp)->vc_sopt.sv_tz;
 smb_rq_getrequest(rqp, &mbp);
 smb_rq_wstart(rqp);
 mb_put_mem(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
 mb_put_uint32le(mbp, 0);

 if (atime)
  smb_time_unix2dos(atime, tzoff, &date, &time, ((void*)0));
 else
  time = date = 0;
 mb_put_uint16le(mbp, date);
 mb_put_uint16le(mbp, time);
 if (mtime)
  smb_time_unix2dos(mtime, tzoff, &date, &time, ((void*)0));
 else
  time = date = 0;
 mb_put_uint16le(mbp, date);
 mb_put_uint16le(mbp, time);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 SMBSDEBUG("%d\n", error);
 smb_rq_done(rqp);
 return error;
}
