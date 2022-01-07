
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int f_vnode; } ;
struct extattr_get_fd_args {int nbytes; int data; int attrnamespace; int fd; int attrname; } ;
typedef int cap_rights_t ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_TEXT (char*) ;
 int AUDIT_ARG_VALUE (int ) ;
 int CAP_EXTATTR_GET ;
 int EXTATTR_MAXNAMELEN ;
 int cap_rights_init (int *,int ) ;
 int copyinstr (int ,char*,int,int *) ;
 int extattr_get_vp (int ,int ,char*,int ,int ,struct thread*) ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int ,int ,struct file**) ;

int
sys_extattr_get_fd(struct thread *td, struct extattr_get_fd_args *uap)
{
 struct file *fp;
 char attrname[EXTATTR_MAXNAMELEN];
 cap_rights_t rights;
 int error;

 AUDIT_ARG_FD(uap->fd);
 AUDIT_ARG_VALUE(uap->attrnamespace);
 error = copyinstr(uap->attrname, attrname, EXTATTR_MAXNAMELEN, ((void*)0));
 if (error)
  return (error);
 AUDIT_ARG_TEXT(attrname);

 error = getvnode(td, uap->fd,
     cap_rights_init(&rights, CAP_EXTATTR_GET), &fp);
 if (error)
  return (error);

 error = extattr_get_vp(fp->f_vnode, uap->attrnamespace,
     attrname, uap->data, uap->nbytes, td);

 fdrop(fp, td);
 return (error);
}
