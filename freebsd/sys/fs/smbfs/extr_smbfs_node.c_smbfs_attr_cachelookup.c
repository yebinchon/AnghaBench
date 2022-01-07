
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_3__* v_mount; } ;
struct vattr {scalar_t__ va_type; int va_mode; int va_nlink; int va_fileid; scalar_t__ va_vaflags; scalar_t__ va_filerev; int va_size; int va_bytes; int va_rdev; int va_flags; int va_gen; int va_mtime; int va_ctime; int va_atime; int va_blocksize; int va_fsid; int va_gid; int va_uid; } ;
struct smbnode {int n_attrage; int n_dosattr; int n_ino; int n_mtime; int n_size; } ;
struct smbmount {int sm_file_mode; int sm_dir_mode; int sm_share; int sm_gid; int sm_uid; } ;
struct TYPE_8__ {int vc_txmax; } ;
struct TYPE_5__ {int * val; } ;
struct TYPE_6__ {TYPE_1__ f_fsid; } ;
struct TYPE_7__ {TYPE_2__ mnt_stat; } ;


 int EINVAL ;
 int ENOENT ;
 int NODEV ;
 int SMB_FA_ARCHIVE ;
 int SMB_FA_HIDDEN ;
 int SMB_FA_RDONLY ;
 int SMB_FA_SYSTEM ;
 TYPE_4__* SSTOVC (int ) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int UF_ARCHIVE ;
 int UF_HIDDEN ;
 int UF_READONLY ;
 int UF_SYSTEM ;
 scalar_t__ VDIR ;
 int VNOVAL ;
 scalar_t__ VREG ;
 struct smbnode* VTOSMB (struct vnode*) ;
 struct smbmount* VTOSMBFS (struct vnode*) ;
 int time_second ;

int
smbfs_attr_cachelookup(struct vnode *vp, struct vattr *va)
{
 struct smbnode *np = VTOSMB(vp);
 struct smbmount *smp = VTOSMBFS(vp);
 int diff;

 diff = time_second - np->n_attrage;
 if (diff > 2)
  return ENOENT;
 va->va_type = vp->v_type;
 va->va_flags = 0;
 if (vp->v_type == VREG) {
  va->va_mode = smp->sm_file_mode;
  if (np->n_dosattr & SMB_FA_RDONLY) {
   va->va_mode &= ~(S_IWUSR|S_IWGRP|S_IWOTH);
   va->va_flags |= UF_READONLY;
  }
 } else if (vp->v_type == VDIR) {
  va->va_mode = smp->sm_dir_mode;
 } else
  return EINVAL;
 va->va_size = np->n_size;
 va->va_nlink = 1;
 va->va_uid = smp->sm_uid;
 va->va_gid = smp->sm_gid;
 va->va_fsid = vp->v_mount->mnt_stat.f_fsid.val[0];
 va->va_fileid = np->n_ino;
 if (va->va_fileid == 0)
  va->va_fileid = 2;
 va->va_blocksize = SSTOVC(smp->sm_share)->vc_txmax;
 va->va_mtime = np->n_mtime;
 va->va_atime = va->va_ctime = va->va_mtime;
 va->va_gen = VNOVAL;
 if (np->n_dosattr & SMB_FA_HIDDEN)
  va->va_flags |= UF_HIDDEN;
 if (np->n_dosattr & SMB_FA_SYSTEM)
  va->va_flags |= UF_SYSTEM;



 if ((vp->v_type != VDIR) && (np->n_dosattr & SMB_FA_ARCHIVE))
  va->va_flags |= UF_ARCHIVE;
 va->va_rdev = NODEV;
 va->va_bytes = va->va_size;
 va->va_filerev = 0;
 va->va_vaflags = 0;
 return 0;
}
