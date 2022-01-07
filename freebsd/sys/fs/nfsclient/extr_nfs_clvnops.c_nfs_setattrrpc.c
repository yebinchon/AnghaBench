
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vattr {int va_gid; int va_uid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_flag; TYPE_1__* n_accesscache; } ;
struct TYPE_2__ {scalar_t__ stamp; } ;


 int KDTRACE_NFS_ACCESSCACHE_FLUSH_DONE (struct vnode*) ;
 int NDELEGMOD ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFS_ACCESSCACHESIZE ;
 scalar_t__ NFS_ISV34 (struct vnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_setattr (struct vnode*,struct vattr*,int *,struct ucred*,struct thread*,struct nfsvattr*,int*,int *) ;

__attribute__((used)) static int
nfs_setattrrpc(struct vnode *vp, struct vattr *vap, struct ucred *cred,
    struct thread *td)
{
 struct nfsnode *np = VTONFS(vp);
 int error, ret, attrflag, i;
 struct nfsvattr nfsva;

 if (NFS_ISV34(vp)) {
  NFSLOCKNODE(np);
  for (i = 0; i < NFS_ACCESSCACHESIZE; i++)
   np->n_accesscache[i].stamp = 0;
  np->n_flag |= NDELEGMOD;
  NFSUNLOCKNODE(np);
  KDTRACE_NFS_ACCESSCACHE_FLUSH_DONE(vp);
 }
 error = nfsrpc_setattr(vp, vap, ((void*)0), cred, td, &nfsva, &attrflag,
     ((void*)0));
 if (attrflag) {
  ret = nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0, 1);
  if (ret && !error)
   error = ret;
 }
 if (error && NFS_ISV4(vp))
  error = nfscl_maperr(td, error, vap->va_uid, vap->va_gid);
 return (error);
}
