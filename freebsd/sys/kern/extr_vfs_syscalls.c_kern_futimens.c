
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct file {int f_vnode; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_VNODE1 (int ) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int UTIMENS_EXIT ;
 int UTIMENS_NULL ;
 int VOP_UNLOCK (int ,int ) ;
 int cap_futimes_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getutimens (struct timespec*,int,struct timespec*,int*) ;
 int getvnode (struct thread*,int,int *,struct file**) ;
 int setutimes (struct thread*,int ,struct timespec*,int,int) ;
 int vn_lock (int ,int) ;

int
kern_futimens(struct thread *td, int fd, struct timespec *tptr,
    enum uio_seg tptrseg)
{
 struct timespec ts[2];
 struct file *fp;
 int error, flags;

 AUDIT_ARG_FD(fd);
 error = getutimens(tptr, tptrseg, ts, &flags);
 if (error != 0)
  return (error);
 if (flags & UTIMENS_EXIT)
  return (0);
 error = getvnode(td, fd, &cap_futimes_rights, &fp);
 if (error != 0)
  return (error);





 error = setutimes(td, fp->f_vnode, ts, 2, flags & UTIMENS_NULL);
 fdrop(fp, td);
 return (error);
}
