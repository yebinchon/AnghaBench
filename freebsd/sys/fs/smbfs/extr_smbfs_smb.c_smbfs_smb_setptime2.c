
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {TYPE_1__* n_mount; } ;
struct TYPE_4__ {int sv_tz; } ;
struct smb_vc {int vc_txmax; TYPE_2__ vc_sopt; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; int t2_maxdcount; struct mbchain t2_tdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
struct TYPE_3__ {struct smb_share* sm_share; } ;


 int SMB_INFO_STANDARD ;
 int SMB_TRANS2_SET_PATH_INFORMATION ;
 int SSTOCP (struct smb_share*) ;
 struct smb_vc* SSTOVC (struct smb_share*) ;
 int mb_init (struct mbchain*) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int smb_t2_alloc (int ,int ,struct smb_cred*,struct smb_t2rq**) ;
 int smb_t2_done (struct smb_t2rq*) ;
 int smb_t2_request (struct smb_t2rq*) ;
 int smb_time_unix2dos (struct timespec*,int,int*,int*,int *) ;
 int smbfs_fullpath (struct mbchain*,struct smb_vc*,struct smbnode*,int *,int ) ;

int
smbfs_smb_setptime2(struct smbnode *np, struct timespec *mtime,
 struct timespec *atime, int attr, struct smb_cred *scred)
{
 struct smb_t2rq *t2p;
 struct smb_share *ssp = np->n_mount->sm_share;
 struct smb_vc *vcp = SSTOVC(ssp);
 struct mbchain *mbp;
 u_int16_t date, time;
 int error, tzoff;

 error = smb_t2_alloc(SSTOCP(ssp), SMB_TRANS2_SET_PATH_INFORMATION,
     scred, &t2p);
 if (error)
  return error;
 mbp = &t2p->t2_tparam;
 mb_init(mbp);
 mb_put_uint16le(mbp, SMB_INFO_STANDARD);
 mb_put_uint32le(mbp, 0);

 error = smbfs_fullpath(mbp, vcp, np, ((void*)0), 0);
 if (error) {
  smb_t2_done(t2p);
  return error;
 }
 tzoff = vcp->vc_sopt.sv_tz;
 mbp = &t2p->t2_tdata;
 mb_init(mbp);
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
 mb_put_uint32le(mbp, 0);
 mb_put_uint32le(mbp, 0);
 mb_put_uint16le(mbp, attr);
 mb_put_uint32le(mbp, 0);
 t2p->t2_maxpcount = 5 * 2;
 t2p->t2_maxdcount = vcp->vc_txmax;
 error = smb_t2_request(t2p);
 smb_t2_done(t2p);
 return error;
}
