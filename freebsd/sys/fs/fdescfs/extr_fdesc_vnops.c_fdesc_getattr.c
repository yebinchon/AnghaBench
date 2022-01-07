
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_getattr_args {struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int v_vflag; int v_type; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct vattr {int va_mode; int va_nlink; int va_type; int va_fileid; int va_rdev; void* va_size; scalar_t__ va_filerev; scalar_t__ va_bytes; scalar_t__ va_flags; scalar_t__ va_gen; TYPE_1__ va_mtime; TYPE_1__ va_ctime; TYPE_1__ va_atime; void* va_blocksize; scalar_t__ va_gid; scalar_t__ va_uid; } ;
struct timeval {int tv_sec; } ;
struct TYPE_4__ {int fd_type; int fd_ix; } ;


 void* DEV_BSIZE ;


 int NODEV ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int VCHR ;
 int VDIR ;
 int VLNK ;
 TYPE_2__* VTOFDESC (struct vnode*) ;
 int VV_READLINK ;
 int getboottime (struct timeval*) ;
 int makedev (int ,int ) ;
 int panic (char*) ;

__attribute__((used)) static int
fdesc_getattr(struct vop_getattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vattr *vap = ap->a_vap;
 struct timeval boottime;

 getboottime(&boottime);
 vap->va_mode = S_IRUSR|S_IXUSR|S_IRGRP|S_IXGRP|S_IROTH|S_IXOTH;
 vap->va_fileid = VTOFDESC(vp)->fd_ix;
 vap->va_uid = 0;
 vap->va_gid = 0;
 vap->va_blocksize = DEV_BSIZE;
 vap->va_atime.tv_sec = boottime.tv_sec;
 vap->va_atime.tv_nsec = 0;
 vap->va_mtime = vap->va_atime;
 vap->va_ctime = vap->va_mtime;
 vap->va_gen = 0;
 vap->va_flags = 0;
 vap->va_bytes = 0;
 vap->va_filerev = 0;

 switch (VTOFDESC(vp)->fd_type) {
 case 128:
  vap->va_type = VDIR;
  vap->va_nlink = 2;
  vap->va_size = DEV_BSIZE;
  vap->va_rdev = NODEV;
  break;

 case 129:
  vap->va_type = (vp->v_vflag & VV_READLINK) == 0 ? VCHR : VLNK;
  vap->va_nlink = 1;
  vap->va_size = 0;
  vap->va_rdev = makedev(0, vap->va_fileid);
  break;

 default:
  panic("fdesc_getattr");
  break;
 }

 vp->v_type = vap->va_type;
 return (0);
}
