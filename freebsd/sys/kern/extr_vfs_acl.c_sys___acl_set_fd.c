
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int f_vnode; } ;
struct __acl_set_fd_args {int aclp; int type; int filedes; } ;
typedef int cap_rights_t ;


 int AUDIT_ARG_FD (int ) ;
 int CAP_ACL_SET ;
 int cap_rights_init (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int ,int ,struct file**) ;
 int vacl_set_acl (struct thread*,int ,int ,int ) ;

int
sys___acl_set_fd(struct thread *td, struct __acl_set_fd_args *uap)
{
 struct file *fp;
 cap_rights_t rights;
 int error;

 AUDIT_ARG_FD(uap->filedes);
 error = getvnode(td, uap->filedes,
     cap_rights_init(&rights, CAP_ACL_SET), &fp);
 if (error == 0) {
  error = vacl_set_acl(td, fp->f_vnode, uap->type, uap->aclp);
  fdrop(fp, td);
 }
 return (error);
}
