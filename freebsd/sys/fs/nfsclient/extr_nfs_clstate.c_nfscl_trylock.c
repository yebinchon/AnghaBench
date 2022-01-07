
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int u_int8_t ;
typedef int u_int64_t ;
struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_repstat; } ;
struct nfsmount {int dummy; } ;
struct nfscllockowner {int dummy; } ;
typedef int NFSPROC_T ;


 int EACCES ;
 int EAUTH ;
 int NFSERR_DELAY ;
 int PZERO ;
 int newnfs_setroot (struct ucred*) ;
 int nfs_catnap (int ,int,char*) ;
 int nfsrpc_lock (struct nfsrv_descript*,struct nfsmount*,int ,int *,int,struct nfscllockowner*,int,int,int ,int ,short,struct ucred*,int *,int) ;

__attribute__((used)) static int
nfscl_trylock(struct nfsmount *nmp, vnode_t vp, u_int8_t *fhp,
    int fhlen, struct nfscllockowner *nlp, int newone, int reclaim,
    u_int64_t off, u_int64_t len, short type, struct ucred *cred, NFSPROC_T *p)
{
 struct nfsrv_descript nfsd, *nd = &nfsd;
 int error;

 do {
  error = nfsrpc_lock(nd, nmp, vp, fhp, fhlen, nlp, newone,
      reclaim, off, len, type, cred, p, 0);
  if (!error && nd->nd_repstat == NFSERR_DELAY)
   (void) nfs_catnap(PZERO, (int)nd->nd_repstat,
       "nfstrylck");
 } while (!error && nd->nd_repstat == NFSERR_DELAY);
 if (!error)
  error = nd->nd_repstat;
 if (error == EAUTH || error == EACCES) {

  newnfs_setroot(cred);
  do {
   error = nfsrpc_lock(nd, nmp, vp, fhp, fhlen, nlp,
       newone, reclaim, off, len, type, cred, p, 1);
   if (!error && nd->nd_repstat == NFSERR_DELAY)
    (void) nfs_catnap(PZERO, (int)nd->nd_repstat,
        "nfstrylck");
  } while (!error && nd->nd_repstat == NFSERR_DELAY);
  if (!error)
   error = nd->nd_repstat;
 }
 return (error);
}
