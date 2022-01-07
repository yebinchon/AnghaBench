
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct smbmount {int sm_caseopt; int sm_uid; int sm_gid; int sm_file_mode; int sm_dir_mode; struct smb_dev* sm_dev; int sm_flags; int * sm_root; struct smb_share* sm_share; } ;
struct smb_vc {int vc_srvname; int vc_username; int vc_txmax; } ;
struct smb_share {int ss_name; } ;
struct smb_dev {int dummy; } ;
struct smb_cred {int dummy; } ;
struct TYPE_2__ {char* f_mntfromname; int f_iosize; } ;
struct mount {int mnt_flag; TYPE_1__ mnt_stat; int mnt_optnew; struct smbmount* mnt_data; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int LK_EXCLUSIVE ;
 int MNAMELEN ;
 int MNT_ROOTFS ;
 int MNT_UPDATE ;
 int M_SMBFSDATA ;
 int M_WAITOK ;
 int M_ZERO ;
 int SMBERROR (char*,struct mount*) ;
 int SMBFS_MOUNT_NO_LONG ;
 int SMBM_EXEC ;
 int SMBVDEBUG (char*,int ) ;
 int SMB_LOCK () ;
 int SMB_UNLOCK () ;
 struct smb_vc* SSTOVC (struct smb_share*) ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int bzero (char*,int ) ;
 struct thread* curthread ;
 int free (struct smbmount*,int ) ;
 struct smbmount* malloc (int,int ,int) ;
 int printf (char*,int,int) ;
 int sdp_trydestroy (struct smb_dev*) ;
 int smb_dev2share (int,int ,struct smb_cred*,struct smb_share**,struct smb_dev**) ;
 int smb_makescred (struct smb_cred*,struct thread*,int ) ;
 int smb_share_put (struct smb_share*,struct smb_cred*) ;
 int smb_share_unlock (struct smb_share*) ;
 int smbfs_free_scred (struct smb_cred*) ;
 struct smb_cred* smbfs_malloc_scred () ;
 int smbfs_opts ;
 int smbfs_root (struct mount*,int ,struct vnode**) ;
 char* strchr (int ,int ) ;
 int strncpy (char*,int ,int) ;
 scalar_t__ vfs_filteropt (int ,int ) ;
 int vfs_flagopt (int ,char*,int *,int ) ;
 int vfs_getnewfsid (struct mount*) ;
 int vfs_mount_error (struct mount*,char*,...) ;
 int vfs_scanopt (int ,char*,char*,int*) ;
 int vrefcnt (struct vnode*) ;

__attribute__((used)) static int
smbfs_mount(struct mount *mp)
{
 struct smbmount *smp = ((void*)0);
 struct smb_vc *vcp;
 struct smb_share *ssp = ((void*)0);
 struct vnode *vp;
 struct thread *td;
 struct smb_dev *dev;
 struct smb_cred *scred;
 int error, v;
 char *pc, *pe;

 dev = ((void*)0);
 td = curthread;
 if (mp->mnt_flag & (MNT_UPDATE | MNT_ROOTFS))
  return EOPNOTSUPP;

 if (vfs_filteropt(mp->mnt_optnew, smbfs_opts)) {
  vfs_mount_error(mp, "%s", "Invalid option");
  return (EINVAL);
 }

 scred = smbfs_malloc_scred();
 smb_makescred(scred, td, td->td_ucred);


 if (1 != vfs_scanopt(mp->mnt_optnew, "fd", "%d", &v)) {
  vfs_mount_error(mp, "No fd option");
  smbfs_free_scred(scred);
  return (EINVAL);
 }
 error = smb_dev2share(v, SMBM_EXEC, scred, &ssp, &dev);
 smp = malloc(sizeof(*smp), M_SMBFSDATA, M_WAITOK | M_ZERO);
 if (error) {
  printf("invalid device handle %d (%d)\n", v, error);
  vfs_mount_error(mp, "invalid device handle %d %d\n", v, error);
  smbfs_free_scred(scred);
  free(smp, M_SMBFSDATA);
  return error;
 }
 vcp = SSTOVC(ssp);
 smb_share_unlock(ssp);
 mp->mnt_stat.f_iosize = SSTOVC(ssp)->vc_txmax;
 mp->mnt_data = smp;
 smp->sm_share = ssp;
 smp->sm_root = ((void*)0);
 smp->sm_dev = dev;
 if (1 != vfs_scanopt(mp->mnt_optnew,
     "caseopt", "%d", &smp->sm_caseopt)) {
  vfs_mount_error(mp, "Invalid caseopt");
  error = EINVAL;
  goto bad;
 }
 if (1 != vfs_scanopt(mp->mnt_optnew, "uid", "%d", &v)) {
  vfs_mount_error(mp, "Invalid uid");
  error = EINVAL;
  goto bad;
 }
 smp->sm_uid = v;

 if (1 != vfs_scanopt(mp->mnt_optnew, "gid", "%d", &v)) {
  vfs_mount_error(mp, "Invalid gid");
  error = EINVAL;
  goto bad;
 }
 smp->sm_gid = v;

 if (1 != vfs_scanopt(mp->mnt_optnew, "file_mode", "%d", &v)) {
  vfs_mount_error(mp, "Invalid file_mode");
  error = EINVAL;
  goto bad;
 }
 smp->sm_file_mode = (v & (S_IRWXU|S_IRWXG|S_IRWXO)) | S_IFREG;

 if (1 != vfs_scanopt(mp->mnt_optnew, "dir_mode", "%d", &v)) {
  vfs_mount_error(mp, "Invalid dir_mode");
  error = EINVAL;
  goto bad;
 }
 smp->sm_dir_mode = (v & (S_IRWXU|S_IRWXG|S_IRWXO)) | S_IFDIR;

 vfs_flagopt(mp->mnt_optnew,
     "nolong", &smp->sm_flags, SMBFS_MOUNT_NO_LONG);

 pc = mp->mnt_stat.f_mntfromname;
 pe = pc + sizeof(mp->mnt_stat.f_mntfromname);
 bzero(pc, MNAMELEN);
 *pc++ = '/';
 *pc++ = '/';
 pc = strchr(strncpy(pc, vcp->vc_username, pe - pc - 2), 0);
 if (pc < pe-1) {
  *(pc++) = '@';
  pc = strchr(strncpy(pc, vcp->vc_srvname, pe - pc - 2), 0);
  if (pc < pe - 1) {
   *(pc++) = '/';
   strncpy(pc, ssp->ss_name, pe - pc - 2);
  }
 }
 vfs_getnewfsid(mp);
 error = smbfs_root(mp, LK_EXCLUSIVE, &vp);
 if (error) {
  vfs_mount_error(mp, "smbfs_root error: %d", error);
  goto bad;
 }
 VOP_UNLOCK(vp, 0);
 SMBVDEBUG("root.v_usecount = %d\n", vrefcnt(vp));




 smbfs_free_scred(scred);
 return error;
bad:
 if (ssp)
  smb_share_put(ssp, scred);
 smbfs_free_scred(scred);
 SMB_LOCK();
 if (error && smp->sm_dev == dev) {
  smp->sm_dev = ((void*)0);
  sdp_trydestroy(dev);
 }
 SMB_UNLOCK();
 free(smp, M_SMBFSDATA);
 return error;
}
