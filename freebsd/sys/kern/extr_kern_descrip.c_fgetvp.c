
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
typedef int cap_rights_t ;


 int _fgetvp (struct thread*,int,int ,int *,struct vnode**) ;

int
fgetvp(struct thread *td, int fd, cap_rights_t *rightsp, struct vnode **vpp)
{

 return (_fgetvp(td, fd, 0, rightsp, vpp));
}
