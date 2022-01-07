
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef int uint32_t ;
struct statfs {int f_bsize; int f_files; int f_ffree; void* f_bavail; void* f_bfree; void* f_blocks; } ;
struct mdchain {int dummy; } ;
struct mbchain {int dummy; } ;
struct smb_t2rq {int t2_maxpcount; int t2_maxdcount; struct mdchain t2_rdata; struct mbchain t2_tparam; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
typedef scalar_t__ int64_t ;


 int SMB_QUERY_FS_SIZE_INFO ;
 int SMB_TRANS2_QUERY_FS_INFORMATION ;
 int SSTOCP (struct smb_share*) ;
 int mb_init (struct mbchain*) ;
 int mb_put_uint16le (struct mbchain*,int ) ;
 int md_get_int64le (struct mdchain*,scalar_t__*) ;
 int md_get_uint32le (struct mdchain*,int*) ;
 int smb_t2_alloc (int ,int ,struct smb_cred*,struct smb_t2rq**) ;
 int smb_t2_done (struct smb_t2rq*) ;
 int smb_t2_request (struct smb_t2rq*) ;

__attribute__((used)) static int
smbfs_query_info_fs(struct smb_share *ssp, struct statfs *sbp,
 struct smb_cred *scred)
{
 struct smb_t2rq *t2p;
 struct mbchain *mbp;
 struct mdchain *mdp;
 uint32_t bsize, bpu;
 int64_t units, funits;
 int error;

 error = smb_t2_alloc(SSTOCP(ssp), SMB_TRANS2_QUERY_FS_INFORMATION,
     scred, &t2p);
 if (error)
  return (error);
 mbp = &t2p->t2_tparam;
 mb_init(mbp);
 mb_put_uint16le(mbp, SMB_QUERY_FS_SIZE_INFO);
 t2p->t2_maxpcount = 2;
 t2p->t2_maxdcount = sizeof(int64_t) * 2 + sizeof(uint32_t) * 2;
 error = smb_t2_request(t2p);
 if (error) {
  smb_t2_done(t2p);
  return (error);
 }
 mdp = &t2p->t2_rdata;
 md_get_int64le(mdp, &units);
 md_get_int64le(mdp, &funits);
 md_get_uint32le(mdp, &bpu);
 md_get_uint32le(mdp, &bsize);
 sbp->f_bsize = bpu * bsize;
 sbp->f_blocks= (uint64_t)units;
 sbp->f_bfree = (uint64_t)funits;
 sbp->f_bavail= (uint64_t)funits;
 sbp->f_files = 0xffff;
 sbp->f_ffree = 0xffff;
 smb_t2_done(t2p);
 return (0);
}
