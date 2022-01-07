
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u_quad_t ;
struct vnode {int v_mount; } ;
struct uio {int uio_resid; int uio_offset; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_flag; } ;
struct nfsmount {int nm_state; int nm_mtx; } ;
typedef int gid_t ;


 int EIO ;
 int NDSCOMMIT ;
 scalar_t__ NFSHASPNFS (struct nfsmount*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSSTA_HASWRITEVERF ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NFSV4OPEN_ACCESSWRITE ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 struct nfsmount* VFSTONFS (int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfscl_doiods (struct vnode*,struct uio*,int *,int *,int ,int,struct ucred*,struct thread*) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_maperr (struct thread*,int,int ,int ) ;
 int nfsrpc_commit (struct vnode*,int ,int,struct ucred*,struct thread*,struct nfsvattr*,int*,int *) ;

int
ncl_commit(struct vnode *vp, u_quad_t offset, int cnt, struct ucred *cred,
   struct thread *td)
{
 struct nfsvattr nfsva;
 struct nfsmount *nmp = VFSTONFS(vp->v_mount);
 struct nfsnode *np;
 struct uio uio;
 int error, attrflag;

 np = VTONFS(vp);
 error = EIO;
 attrflag = 0;
 if (NFSHASPNFS(nmp) && (np->n_flag & NDSCOMMIT) != 0) {
  uio.uio_offset = offset;
  uio.uio_resid = cnt;
  error = nfscl_doiods(vp, &uio, ((void*)0), ((void*)0),
      NFSV4OPEN_ACCESSWRITE, 1, cred, td);
  if (error != 0) {
   NFSLOCKNODE(np);
   np->n_flag &= ~NDSCOMMIT;
   NFSUNLOCKNODE(np);
  }
 }
 if (error != 0) {
  mtx_lock(&nmp->nm_mtx);
  if ((nmp->nm_state & NFSSTA_HASWRITEVERF) == 0) {
   mtx_unlock(&nmp->nm_mtx);
   return (0);
  }
  mtx_unlock(&nmp->nm_mtx);
  error = nfsrpc_commit(vp, offset, cnt, cred, td, &nfsva,
      &attrflag, ((void*)0));
 }
 if (attrflag != 0)
  (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0),
      0, 1);
 if (error != 0 && NFS_ISV4(vp))
  error = nfscl_maperr(td, error, (uid_t)0, (gid_t)0);
 return (error);
}
