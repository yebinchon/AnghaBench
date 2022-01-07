
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;


 struct vattr* VTOVA (struct vnode*) ;
 int fuse_internal_do_getattr (struct vnode*,struct vattr*,struct ucred*,struct thread*) ;

int
fuse_internal_getattr(struct vnode *vp, struct vattr *vap, struct ucred *cred,
 struct thread *td)
{
 struct vattr *attrs;

 if ((attrs = VTOVA(vp)) != ((void*)0)) {
  *vap = *attrs;
  return 0;
 }

 return fuse_internal_do_getattr(vp, vap, cred, td);
}
