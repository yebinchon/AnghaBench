
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_lookup_args {struct vnode* a_dvp; struct componentname* a_cnp; struct vnode** a_vpp; } ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct componentname {int cn_flags; scalar_t__ cn_nameiop; struct thread* cn_thread; struct ucred* cn_cred; } ;
struct TYPE_2__ {int mnt_flag; } ;


 scalar_t__ DELETE ;
 int ENOTDIR ;
 int EROFS ;
 int ISLASTCN ;
 int MNT_RDONLY ;
 scalar_t__ RENAME ;
 scalar_t__ VDIR ;
 int VEXEC ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 int VOP_CACHEDLOOKUP (struct vnode*,struct vnode**,struct componentname*) ;
 int cache_lookup (struct vnode*,struct vnode**,struct componentname*,int *,int *) ;

int
vfs_cache_lookup(struct vop_lookup_args *ap)
{
 struct vnode *dvp;
 int error;
 struct vnode **vpp = ap->a_vpp;
 struct componentname *cnp = ap->a_cnp;
 struct ucred *cred = cnp->cn_cred;
 int flags = cnp->cn_flags;
 struct thread *td = cnp->cn_thread;

 *vpp = ((void*)0);
 dvp = ap->a_dvp;

 if (dvp->v_type != VDIR)
  return (ENOTDIR);

 if ((flags & ISLASTCN) && (dvp->v_mount->mnt_flag & MNT_RDONLY) &&
     (cnp->cn_nameiop == DELETE || cnp->cn_nameiop == RENAME))
  return (EROFS);

 error = VOP_ACCESS(dvp, VEXEC, cred, td);
 if (error)
  return (error);

 error = cache_lookup(dvp, vpp, cnp, ((void*)0), ((void*)0));
 if (error == 0)
  return (VOP_CACHEDLOOKUP(dvp, vpp, cnp));
 if (error == -1)
  return (0);
 return (error);
}
