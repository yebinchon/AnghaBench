
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
typedef int NFSPROC_T ;


 int NFSFREECRED (struct ucred*) ;
 int NFSPROC_LAYOUTRETURN ;
 struct ucred* newnfs_getcred () ;
 int nfsrv_proxyds (struct vnode*,int ,int ,struct ucred*,int *,int ,int *,int *,int *,struct nfsvattr*,int *) ;

int
nfsrv_updatemdsattr(struct vnode *vp, struct nfsvattr *nap, NFSPROC_T *p)
{
 struct ucred *tcred;
 int error;


 tcred = newnfs_getcred();
 error = nfsrv_proxyds(vp, 0, 0, tcred, p, NFSPROC_LAYOUTRETURN,
     ((void*)0), ((void*)0), ((void*)0), nap, ((void*)0));
 NFSFREECRED(tcred);
 return (error);
}
