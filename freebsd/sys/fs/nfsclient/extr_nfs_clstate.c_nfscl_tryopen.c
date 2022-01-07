
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct ucred {int dummy; } ;
struct nfsmount {int dummy; } ;
struct nfsclopen {int dummy; } ;
struct nfscldeleg {int dummy; } ;
typedef int NFSPROC_T ;


 int EACCES ;
 int EAUTH ;
 int NFSERR_DELAY ;
 int PZERO ;
 int newnfs_setroot (struct ucred*) ;
 int nfs_catnap (int ,int,char*) ;
 int nfsrpc_openrpc (struct nfsmount*,int ,int *,int,int *,int,int ,struct nfsclopen*,int *,int,struct nfscldeleg**,int,int ,struct ucred*,int *,int,int ) ;

__attribute__((used)) static int
nfscl_tryopen(struct nfsmount *nmp, vnode_t vp, u_int8_t *fhp, int fhlen,
    u_int8_t *newfhp, int newfhlen, u_int32_t mode, struct nfsclopen *op,
    u_int8_t *name, int namelen, struct nfscldeleg **ndpp,
    int reclaim, u_int32_t delegtype, struct ucred *cred, NFSPROC_T *p)
{
 int error;

 do {
  error = nfsrpc_openrpc(nmp, vp, fhp, fhlen, newfhp, newfhlen,
      mode, op, name, namelen, ndpp, reclaim, delegtype, cred, p,
      0, 0);
  if (error == NFSERR_DELAY)
   (void) nfs_catnap(PZERO, error, "nfstryop");
 } while (error == NFSERR_DELAY);
 if (error == EAUTH || error == EACCES) {

  newnfs_setroot(cred);
  do {
      error = nfsrpc_openrpc(nmp, vp, fhp, fhlen, newfhp,
   newfhlen, mode, op, name, namelen, ndpp, reclaim,
   delegtype, cred, p, 1, 0);
      if (error == NFSERR_DELAY)
   (void) nfs_catnap(PZERO, error, "nfstryop");
  } while (error == NFSERR_DELAY);
 }
 return (error);
}
