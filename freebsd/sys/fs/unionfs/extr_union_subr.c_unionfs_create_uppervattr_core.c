
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vattr {int va_mode; int va_gid; int va_uid; int va_type; int va_ctime; int va_mtime; int va_atime; } ;
struct unionfs_mount {int um_copymode; int um_udir; int um_ufile; int um_gid; int um_uid; } ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;




 int VATTR_NULL (struct vattr*) ;
 int VDIR ;

void
unionfs_create_uppervattr_core(struct unionfs_mount *ump,
          struct vattr *lva,
          struct vattr *uva,
          struct thread *td)
{
 VATTR_NULL(uva);
 uva->va_type = lva->va_type;
 uva->va_atime = lva->va_atime;
 uva->va_mtime = lva->va_mtime;
 uva->va_ctime = lva->va_ctime;

 switch (ump->um_copymode) {
 case 128:
  uva->va_mode = lva->va_mode;
  uva->va_uid = lva->va_uid;
  uva->va_gid = lva->va_gid;
  break;
 case 129:
  if (ump->um_uid == lva->va_uid) {
   uva->va_mode = lva->va_mode & 077077;
   uva->va_mode |= (lva->va_type == VDIR ? ump->um_udir : ump->um_ufile) & 0700;
   uva->va_uid = lva->va_uid;
   uva->va_gid = lva->va_gid;
  } else {
   uva->va_mode = (lva->va_type == VDIR ? ump->um_udir : ump->um_ufile);
   uva->va_uid = ump->um_uid;
   uva->va_gid = ump->um_gid;
  }
  break;
 default:
  uva->va_mode = 0777 & ~td->td_proc->p_fd->fd_cmask;
  uva->va_uid = ump->um_uid;
  uva->va_gid = ump->um_gid;
  break;
 }
}
