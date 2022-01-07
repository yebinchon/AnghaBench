
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct ucred {int dummy; } ;
struct nfsnode {TYPE_1__* n_v4; } ;
struct nfsmount {int nm_mountp; } ;
struct nfsclopen {int dummy; } ;
struct nfscldeleg {int dummy; } ;
struct TYPE_2__ {int n4_namelen; int n4_fhlen; int n4_data; } ;
typedef int NFSPROC_T ;


 int EINVAL ;
 int NFS4NODENAME (TYPE_1__*) ;
 int NFSTOV (struct nfsnode*) ;
 int nfscl_ngetreopen (int ,int *,int,int *,struct nfsnode**) ;
 int nfscl_tryopen (struct nfsmount*,int ,int ,int ,int *,int,int ,struct nfsclopen*,int ,int ,struct nfscldeleg**,int ,int ,struct ucred*,int *) ;
 int vrele (int ) ;

__attribute__((used)) static int
nfsrpc_reopen(struct nfsmount *nmp, u_int8_t *fhp, int fhlen,
    u_int32_t mode, struct nfsclopen *op, struct nfscldeleg **dpp,
    struct ucred *cred, NFSPROC_T *p)
{
 struct nfsnode *np;
 vnode_t vp;
 int error;

 error = nfscl_ngetreopen(nmp->nm_mountp, fhp, fhlen, p, &np);
 if (error)
  return (error);
 vp = NFSTOV(np);
 if (np->n_v4 != ((void*)0)) {
  error = nfscl_tryopen(nmp, vp, np->n_v4->n4_data,
      np->n_v4->n4_fhlen, fhp, fhlen, mode, op,
      NFS4NODENAME(np->n_v4), np->n_v4->n4_namelen, dpp, 0, 0,
      cred, p);
 } else {
  error = EINVAL;
 }
 vrele(vp);
 return (error);
}
