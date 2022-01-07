
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int f_vnode; } ;
struct extattr_list_fd_args {int nbytes; int data; int attrnamespace; int fd; } ;
typedef int cap_rights_t ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_VALUE (int ) ;
 int CAP_EXTATTR_LIST ;
 int cap_rights_init (int *,int ) ;
 int extattr_list_vp (int ,int ,int ,int ,struct thread*) ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int ,int ,struct file**) ;

int
sys_extattr_list_fd(struct thread *td, struct extattr_list_fd_args *uap)
{
 struct file *fp;
 cap_rights_t rights;
 int error;

 AUDIT_ARG_FD(uap->fd);
 AUDIT_ARG_VALUE(uap->attrnamespace);
 error = getvnode(td, uap->fd,
     cap_rights_init(&rights, CAP_EXTATTR_LIST), &fp);
 if (error)
  return (error);

 error = extattr_list_vp(fp->f_vnode, uap->attrnamespace, uap->data,
     uap->nbytes, td);

 fdrop(fp, td);
 return (error);
}
