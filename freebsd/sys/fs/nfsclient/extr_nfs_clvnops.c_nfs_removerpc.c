
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_flag; scalar_t__ n_attrstamp; } ;
typedef int gid_t ;
typedef int caddr_t ;


 int KDTRACE_NFS_ATTRCACHE_FLUSH_DONE (struct vnode*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 int NREMOVEINPROG ;
 int NREMOVEWANT ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_remove (struct vnode*,char*,int,struct vnode*,struct ucred*,struct thread*,struct nfsvattr*,int*,int *) ;
 int wakeup (int ) ;

__attribute__((used)) static int
nfs_removerpc(struct vnode *dvp, struct vnode *vp, char *name,
    int namelen, struct ucred *cred, struct thread *td)
{
 struct nfsvattr dnfsva;
 struct nfsnode *dnp = VTONFS(dvp);
 int error = 0, dattrflag;

 NFSLOCKNODE(dnp);
 dnp->n_flag |= NREMOVEINPROG;
 NFSUNLOCKNODE(dnp);
 error = nfsrpc_remove(dvp, name, namelen, vp, cred, td, &dnfsva,
     &dattrflag, ((void*)0));
 NFSLOCKNODE(dnp);
 if ((dnp->n_flag & NREMOVEWANT)) {
  dnp->n_flag &= ~(NREMOVEWANT | NREMOVEINPROG);
  NFSUNLOCKNODE(dnp);
  wakeup((caddr_t)dnp);
 } else {
  dnp->n_flag &= ~NREMOVEINPROG;
  NFSUNLOCKNODE(dnp);
 }
 if (dattrflag)
  (void) nfscl_loadattrcache(&dvp, &dnfsva, ((void*)0), ((void*)0), 0, 1);
 NFSLOCKNODE(dnp);
 dnp->n_flag |= NMODIFIED;
 if (!dattrflag) {
  dnp->n_attrstamp = 0;
  KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(dvp);
 }
 NFSUNLOCKNODE(dnp);
 if (error && NFS_ISV4(dvp))
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 return (error);
}
