
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int nm_mtx; } ;
struct nfsfsinfo {int dummy; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfscl_loadfsinfo (struct nfsmount*,struct nfsfsinfo*) ;
 int nfsrpc_fsinfo (struct vnode*,struct nfsfsinfo*,struct ucred*,struct thread*,struct nfsvattr*,int*,int *) ;

int
ncl_fsinfo(struct nfsmount *nmp, struct vnode *vp, struct ucred *cred,
    struct thread *td)
{
 struct nfsfsinfo fs;
 struct nfsvattr nfsva;
 int error, attrflag;

 error = nfsrpc_fsinfo(vp, &fs, cred, td, &nfsva, &attrflag, ((void*)0));
 if (!error) {
  if (attrflag)
   (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0,
       1);
  mtx_lock(&nmp->nm_mtx);
  nfscl_loadfsinfo(nmp, &fs);
  mtx_unlock(&nmp->nm_mtx);
 }
 return (error);
}
