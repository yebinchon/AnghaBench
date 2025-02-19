
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uoff_t ;
typedef int uint64_t ;
typedef int u_long ;
struct vop_getattr_args {TYPE_2__* a_vp; struct vattr* a_vap; } ;
struct TYPE_3__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct vattr {int va_fileid; int va_mode; int va_nlink; int va_size; int va_bytes; scalar_t__ va_type; int va_filerev; int va_blocksize; scalar_t__ va_gen; int va_flags; TYPE_1__ va_birthtime; TYPE_1__ va_mtime; TYPE_1__ va_atime; TYPE_1__ va_ctime; int va_rdev; int va_gid; int va_uid; int va_fsid; } ;
struct timespec {int dummy; } ;
struct msdosfsmount {int pm_BytesPerSec; int pm_dirmask; int pm_mask; int pm_flags; int pm_crbomask; int pm_bpcluster; int pm_gid; int pm_uid; int pm_dev; } ;
struct direntry {int dummy; } ;
struct denode {int de_Attributes; scalar_t__ de_StartCluster; scalar_t__ de_dirclust; int de_FileSize; int de_modrev; int de_CHun; int de_CTime; int de_CDate; int de_ADate; int de_MTime; int de_MDate; scalar_t__ de_diroffset; struct msdosfsmount* de_pmp; } ;
typedef int mode_t ;
struct TYPE_4__ {scalar_t__ v_type; } ;


 int ATTR_ARCHIVE ;
 int ATTR_DIRECTORY ;
 int ATTR_HIDDEN ;
 int ATTR_READONLY ;
 int ATTR_SYSTEM ;
 int DETIMES (struct denode*,struct timespec*,struct timespec*,struct timespec*) ;
 int MSDOSFSMNT_LONGNAME ;
 scalar_t__ MSDOSFSROOT ;
 int NODEV ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int UF_ARCHIVE ;
 int UF_HIDDEN ;
 int UF_READONLY ;
 int UF_SYSTEM ;
 scalar_t__ VDIR ;
 struct denode* VTODE (TYPE_2__*) ;
 scalar_t__ cntobn (struct msdosfsmount*,scalar_t__) ;
 int dev2udev (int ) ;
 int fattime2timespec (int ,int ,int ,int ,TYPE_1__*) ;
 scalar_t__ roottobn (struct msdosfsmount*,int ) ;
 int vfs_timestamp (struct timespec*) ;

__attribute__((used)) static int
msdosfs_getattr(struct vop_getattr_args *ap)
{
 struct denode *dep = VTODE(ap->a_vp);
 struct msdosfsmount *pmp = dep->de_pmp;
 struct vattr *vap = ap->a_vap;
 mode_t mode;
 struct timespec ts;
 u_long dirsperblk = pmp->pm_BytesPerSec / sizeof(struct direntry);
 uint64_t fileid;

 vfs_timestamp(&ts);
 DETIMES(dep, &ts, &ts, &ts);
 vap->va_fsid = dev2udev(pmp->pm_dev);





 if (dep->de_Attributes & ATTR_DIRECTORY) {
  fileid = (uint64_t)cntobn(pmp, dep->de_StartCluster) *
      dirsperblk;
  if (dep->de_StartCluster == MSDOSFSROOT)
   fileid = 1;
 } else {
  fileid = (uint64_t)cntobn(pmp, dep->de_dirclust) *
      dirsperblk;
  if (dep->de_dirclust == MSDOSFSROOT)
   fileid = (uint64_t)roottobn(pmp, 0) * dirsperblk;
  fileid += (uoff_t)dep->de_diroffset / sizeof(struct direntry);
 }
 vap->va_fileid = fileid;

 mode = S_IRWXU|S_IRWXG|S_IRWXO;
 if (dep->de_Attributes & ATTR_READONLY)
  mode &= ~(S_IWUSR|S_IWGRP|S_IWOTH);
 vap->va_mode = mode &
     (ap->a_vp->v_type == VDIR ? pmp->pm_dirmask : pmp->pm_mask);
 vap->va_uid = pmp->pm_uid;
 vap->va_gid = pmp->pm_gid;
 vap->va_nlink = 1;
 vap->va_rdev = NODEV;
 vap->va_size = dep->de_FileSize;
 fattime2timespec(dep->de_MDate, dep->de_MTime, 0, 0, &vap->va_mtime);
 vap->va_ctime = vap->va_mtime;
 if (pmp->pm_flags & MSDOSFSMNT_LONGNAME) {
  fattime2timespec(dep->de_ADate, 0, 0, 0, &vap->va_atime);
  fattime2timespec(dep->de_CDate, dep->de_CTime, dep->de_CHun,
      0, &vap->va_birthtime);
 } else {
  vap->va_atime = vap->va_mtime;
  vap->va_birthtime.tv_sec = -1;
  vap->va_birthtime.tv_nsec = 0;
 }
 vap->va_flags = 0;
 if (dep->de_Attributes & ATTR_ARCHIVE)
  vap->va_flags |= UF_ARCHIVE;
 if (dep->de_Attributes & ATTR_HIDDEN)
  vap->va_flags |= UF_HIDDEN;
 if (dep->de_Attributes & ATTR_READONLY)
  vap->va_flags |= UF_READONLY;
 if (dep->de_Attributes & ATTR_SYSTEM)
  vap->va_flags |= UF_SYSTEM;
 vap->va_gen = 0;
 vap->va_blocksize = pmp->pm_bpcluster;
 vap->va_bytes =
     (dep->de_FileSize + pmp->pm_crbomask) & ~pmp->pm_crbomask;
 vap->va_type = ap->a_vp->v_type;
 vap->va_filerev = dep->de_modrev;
 return (0);
}
