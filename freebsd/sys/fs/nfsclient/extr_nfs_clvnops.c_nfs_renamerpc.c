
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; int n_flag; } ;
typedef int gid_t ;


 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_rename (struct vnode*,struct vnode*,char*,int,struct vnode*,struct vnode*,char*,int,struct ucred*,struct thread*,struct nfsvattr*,struct nfsvattr*,int*,int*,int *,int *) ;

__attribute__((used)) static int
nfs_renamerpc(struct vnode *fdvp, struct vnode *fvp, char *fnameptr,
    int fnamelen, struct vnode *tdvp, struct vnode *tvp, char *tnameptr,
    int tnamelen, struct ucred *cred, struct thread *td)
{
 struct nfsvattr fnfsva, tnfsva;
 struct nfsnode *fdnp = VTONFS(fdvp);
 struct nfsnode *tdnp = VTONFS(tdvp);
 int error = 0, fattrflag, tattrflag;

 error = nfsrpc_rename(fdvp, fvp, fnameptr, fnamelen, tdvp, tvp,
     tnameptr, tnamelen, cred, td, &fnfsva, &tnfsva, &fattrflag,
     &tattrflag, ((void*)0), ((void*)0));
 NFSLOCKNODE(fdnp);
 fdnp->n_flag |= NMODIFIED;
 if (fattrflag != 0) {
  NFSUNLOCKNODE(fdnp);
  (void) nfscl_loadattrcache(&fdvp, &fnfsva, ((void*)0), ((void*)0), 0, 1);
 } else {
  fdnp->n_attrstamp = 0;
  NFSUNLOCKNODE(fdnp);
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(fdvp);
 }
 NFSLOCKNODE(tdnp);
 tdnp->n_flag |= NMODIFIED;
 if (tattrflag != 0) {
  NFSUNLOCKNODE(tdnp);
  (void) nfscl_loadattrcache(&tdvp, &tnfsva, ((void*)0), ((void*)0), 0, 1);
 } else {
  tdnp->n_attrstamp = 0;
  NFSUNLOCKNODE(tdnp);
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(tdvp);
 }
 if (error && NFS_ISV4(fdvp))
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 return (error);
}
