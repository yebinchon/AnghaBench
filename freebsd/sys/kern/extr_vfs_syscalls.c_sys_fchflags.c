
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int f_vnode; } ;
struct fchflags_args {int flags; int fd; } ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_FFLAGS (int ) ;
 int AUDIT_ARG_VNODE1 (int ) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int VOP_UNLOCK (int ,int ) ;
 int cap_fchflags_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int ,int *,struct file**) ;
 int setfflags (struct thread*,int ,int ) ;
 int vn_lock (int ,int) ;

int
sys_fchflags(struct thread *td, struct fchflags_args *uap)
{
 struct file *fp;
 int error;

 AUDIT_ARG_FD(uap->fd);
 AUDIT_ARG_FFLAGS(uap->flags);
 error = getvnode(td, uap->fd, &cap_fchflags_rights,
     &fp);
 if (error != 0)
  return (error);





 error = setfflags(td, fp->f_vnode, uap->flags);
 fdrop(fp, td);
 return (error);
}
