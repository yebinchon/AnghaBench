
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u_short ;
struct vnode {TYPE_3__* v_mount; } ;
struct TYPE_13__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_22__ {int tv_nsec; int tv_sec; } ;
struct TYPE_20__ {int tv_nsec; int tv_sec; } ;
struct TYPE_18__ {int tv_nsec; int tv_sec; } ;
struct vattr {scalar_t__ va_fsid; int va_type; scalar_t__ va_size; int va_bytes; int va_gen; int va_flags; int va_blocksize; TYPE_11__ va_birthtime; TYPE_9__ va_ctime; TYPE_7__ va_mtime; TYPE_5__ va_atime; int va_rdev; int va_gid; int va_uid; int va_nlink; int va_mode; int va_fileid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_12__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_21__ {int tv_nsec; int tv_sec; } ;
struct TYPE_19__ {int tv_nsec; int tv_sec; } ;
struct TYPE_17__ {int tv_nsec; int tv_sec; } ;
struct stat {scalar_t__ st_dev; scalar_t__ st_size; int st_blocks; int st_gen; int st_flags; int st_blksize; TYPE_10__ st_birthtim; TYPE_8__ st_ctim; TYPE_6__ st_mtim; TYPE_4__ st_atim; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; } ;
struct TYPE_14__ {scalar_t__* val; } ;
struct TYPE_15__ {TYPE_1__ f_fsid; } ;
struct TYPE_16__ {TYPE_2__ mnt_stat; } ;


 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int EBADF ;
 int EOVERFLOW ;
 int NODEV ;
 scalar_t__ OFF_MAX ;
 int PAGE_SIZE ;
 int PRIV_VFS_GENERATION ;
 int S_BLKSIZE ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;





 scalar_t__ VNOVAL ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;


 int bzero (struct stat*,int) ;
 int mac_vnode_check_stat (struct ucred*,struct ucred*,struct vnode*) ;
 int max (int ,int ) ;
 scalar_t__ priv_check (struct thread*,int ) ;

int
vn_stat(struct vnode *vp, struct stat *sb, struct ucred *active_cred,
    struct ucred *file_cred, struct thread *td)
{
 struct vattr vattr;
 struct vattr *vap;
 int error;
 u_short mode;

 AUDIT_ARG_VNODE1(vp);






 vap = &vattr;






 vap->va_birthtime.tv_sec = -1;
 vap->va_birthtime.tv_nsec = 0;
 vap->va_fsid = VNOVAL;
 vap->va_rdev = NODEV;

 error = VOP_GETATTR(vp, vap, active_cred);
 if (error)
  return (error);




 bzero(sb, sizeof *sb);




 if (vap->va_fsid != VNOVAL)
  sb->st_dev = vap->va_fsid;
 else
  sb->st_dev = vp->v_mount->mnt_stat.f_fsid.val[0];
 sb->st_ino = vap->va_fileid;
 mode = vap->va_mode;
 switch (vap->va_type) {
 case 129:
  mode |= S_IFREG;
  break;
 case 132:
  mode |= S_IFDIR;
  break;
 case 134:
  mode |= S_IFBLK;
  break;
 case 133:
  mode |= S_IFCHR;
  break;
 case 130:
  mode |= S_IFLNK;
  break;
 case 128:
  mode |= S_IFSOCK;
  break;
 case 131:
  mode |= S_IFIFO;
  break;
 default:
  return (EBADF);
 }
 sb->st_mode = mode;
 sb->st_nlink = vap->va_nlink;
 sb->st_uid = vap->va_uid;
 sb->st_gid = vap->va_gid;
 sb->st_rdev = vap->va_rdev;
 if (vap->va_size > OFF_MAX)
  return (EOVERFLOW);
 sb->st_size = vap->va_size;
 sb->st_atim.tv_sec = vap->va_atime.tv_sec;
 sb->st_atim.tv_nsec = vap->va_atime.tv_nsec;
 sb->st_mtim.tv_sec = vap->va_mtime.tv_sec;
 sb->st_mtim.tv_nsec = vap->va_mtime.tv_nsec;
 sb->st_ctim.tv_sec = vap->va_ctime.tv_sec;
 sb->st_ctim.tv_nsec = vap->va_ctime.tv_nsec;
 sb->st_birthtim.tv_sec = vap->va_birthtime.tv_sec;
 sb->st_birthtim.tv_nsec = vap->va_birthtime.tv_nsec;
 sb->st_blksize = max(PAGE_SIZE, vap->va_blocksize);

 sb->st_flags = vap->va_flags;
 if (priv_check(td, PRIV_VFS_GENERATION))
  sb->st_gen = 0;
 else
  sb->st_gen = vap->va_gen;

 sb->st_blocks = vap->va_bytes / S_BLKSIZE;
 return (0);
}
