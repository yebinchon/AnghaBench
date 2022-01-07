
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct nfsmount {int dummy; } ;
struct nfscldeleg {int dummy; } ;
typedef int NFSPROC_T ;


 int EACCES ;
 int EAUTH ;
 int NFSERR_DELAY ;
 int PZERO ;
 int newnfs_setroot (struct ucred*) ;
 int nfs_catnap (int ,int,char*) ;
 int nfsrpc_delegreturn (struct nfscldeleg*,struct ucred*,struct nfsmount*,int *,int) ;

__attribute__((used)) static int
nfscl_trydelegreturn(struct nfscldeleg *dp, struct ucred *cred,
    struct nfsmount *nmp, NFSPROC_T *p)
{
 int error;

 do {
  error = nfsrpc_delegreturn(dp, cred, nmp, p, 0);
  if (error == NFSERR_DELAY)
   (void) nfs_catnap(PZERO, error, "nfstrydp");
 } while (error == NFSERR_DELAY);
 if (error == EAUTH || error == EACCES) {

  newnfs_setroot(cred);
  do {
   error = nfsrpc_delegreturn(dp, cred, nmp, p, 1);
   if (error == NFSERR_DELAY)
    (void) nfs_catnap(PZERO, error, "nfstrydp");
  } while (error == NFSERR_DELAY);
 }
 return (error);
}
