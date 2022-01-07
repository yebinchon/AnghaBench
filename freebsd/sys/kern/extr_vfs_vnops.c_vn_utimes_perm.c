
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int va_vaflags; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;


 int VA_UTIMES_NULL ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 int VOP_ACCESSX (struct vnode*,int ,struct ucred*,struct thread*) ;
 int VWRITE ;
 int VWRITE_ATTRIBUTES ;

int
vn_utimes_perm(struct vnode *vp, struct vattr *vap, struct ucred *cred,
    struct thread *td)
{
 int error;
 error = VOP_ACCESSX(vp, VWRITE_ATTRIBUTES, cred, td);
 if (error != 0 && (vap->va_vaflags & VA_UTIMES_NULL) != 0)
  error = VOP_ACCESS(vp, VWRITE, cred, td);
 return (error);
}
