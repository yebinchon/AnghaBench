
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef int cap_rights_t ;


 int EINVAL ;
 int _fget (struct thread*,int,struct file**,int,int *,int *) ;
 int fdrop (struct file*,struct thread*) ;
 int vrefact (struct vnode*) ;

__attribute__((used)) static __inline int
_fgetvp(struct thread *td, int fd, int flags, cap_rights_t *needrightsp,
    struct vnode **vpp)
{
 struct file *fp;
 int error;

 *vpp = ((void*)0);
 error = _fget(td, fd, &fp, flags, needrightsp, ((void*)0));
 if (error != 0)
  return (error);
 if (fp->f_vnode == ((void*)0)) {
  error = EINVAL;
 } else {
  *vpp = fp->f_vnode;
  vrefact(*vpp);
 }
 fdrop(fp, td);

 return (error);
}
