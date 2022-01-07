
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct timespec {int dummy; } ;
struct smbnode {int n_fid; TYPE_1__* n_mount; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; scalar_t__ t2_maxdcount; struct mbchain t2_tdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef int caddr_t ;
struct TYPE_5__ {int sv_tz; } ;
struct TYPE_6__ {TYPE_2__ vc_sopt; } ;
struct TYPE_4__ {struct smb_share* sm_share; } ;


 int MB_MSYSTEM ;
 int SMB_SET_FILE_BASIC_INFO ;
 int SMB_TRANS2_SET_FILE_INFORMATION ;
 int SSTOCP (struct smb_share*) ;
 TYPE_3__* SSTOVC (struct smb_share*) ;
 int mb_init (struct mbchain*) ;
 int mb_put_int64le (struct mbchain*,scalar_t__) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;
 int mb_put_uint16le (struct mbchain*,int ) ;
 int mb_put_uint32le (struct mbchain*,int ) ;
 int smb_t2_alloc (int ,int ,struct smb_cred*,struct smb_t2rq**) ;
 int smb_t2_done (struct smb_t2rq*) ;
 int smb_t2_request (struct smb_t2rq*) ;
 int smb_time_local2NT (struct timespec*,int,scalar_t__*) ;

int
smbfs_smb_setfattrNT(struct smbnode *np, u_int16_t attr, struct timespec *mtime,
 struct timespec *atime, struct smb_cred *scred)
{
 struct smb_t2rq *t2p;
 struct smb_share *ssp = np->n_mount->sm_share;
 struct mbchain *mbp;
 int64_t tm;
 int error, svtz;

 error = smb_t2_alloc(SSTOCP(ssp), SMB_TRANS2_SET_FILE_INFORMATION,
     scred, &t2p);
 if (error)
  return error;
 svtz = SSTOVC(ssp)->vc_sopt.sv_tz;
 mbp = &t2p->t2_tparam;
 mb_init(mbp);
 mb_put_mem(mbp, (caddr_t)&np->n_fid, 2, MB_MSYSTEM);
 mb_put_uint16le(mbp, SMB_SET_FILE_BASIC_INFO);
 mb_put_uint32le(mbp, 0);
 mbp = &t2p->t2_tdata;
 mb_init(mbp);
 mb_put_int64le(mbp, 0);
 if (atime) {
  smb_time_local2NT(atime, svtz, &tm);
 } else
  tm = 0;
 mb_put_int64le(mbp, tm);
 if (mtime) {
  smb_time_local2NT(mtime, svtz, &tm);
 } else
  tm = 0;
 mb_put_int64le(mbp, tm);
 mb_put_int64le(mbp, tm);
 mb_put_uint16le(mbp, attr);
 mb_put_uint32le(mbp, 0);
 mb_put_uint16le(mbp, 0);
 t2p->t2_maxpcount = 2;
 t2p->t2_maxdcount = 0;
 error = smb_t2_request(t2p);
 smb_t2_done(t2p);
 return error;
}
