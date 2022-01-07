
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_iflag; } ;
struct vattr {int va_mtime; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsrv_descript {int nd_cred; } ;


 int ESTALE ;
 scalar_t__ LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_UPGRADE ;
 scalar_t__ NFSVOPISLOCKED (struct vnode*) ;
 int NFSVOPLOCK (struct vnode*,int) ;
 int VATTR_NULL (struct vattr*) ;
 int VI_DOOMED ;
 int VOP_SETATTR (struct vnode*,struct vattr*,int ) ;
 int nfsvno_getattr (struct vnode*,struct nfsvattr*,struct nfsrv_descript*,struct thread*,int,int *) ;
 int vfs_timestamp (int *) ;

int
nfsvno_updfilerev(struct vnode *vp, struct nfsvattr *nvap,
    struct nfsrv_descript *nd, struct thread *p)
{
 struct vattr va;

 VATTR_NULL(&va);
 vfs_timestamp(&va.va_mtime);
 if (NFSVOPISLOCKED(vp) != LK_EXCLUSIVE) {
  NFSVOPLOCK(vp, LK_UPGRADE | LK_RETRY);
  if ((vp->v_iflag & VI_DOOMED) != 0)
   return (ESTALE);
 }
 (void) VOP_SETATTR(vp, &va, nd->nd_cred);
 (void) nfsvno_getattr(vp, nvap, nd, p, 1, ((void*)0));
 return (0);
}
