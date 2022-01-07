
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;


 int vn_close1 (struct vnode*,int,struct ucred*,struct thread*,int) ;

int
vn_close(struct vnode *vp, int flags, struct ucred *file_cred,
    struct thread *td)
{

 return (vn_close1(vp, flags, file_cred, td, 0));
}
