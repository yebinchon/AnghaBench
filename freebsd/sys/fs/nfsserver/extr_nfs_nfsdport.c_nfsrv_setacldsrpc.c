
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsrvsetacldsdorpc {scalar_t__ done; scalar_t__ inprog; int err; int tsk; struct acl* aclp; int * p; struct ucred* cred; struct vnode* vp; struct nfsmount* nmp; int fh; } ;
struct nfsmount {int dummy; } ;
struct acl {int dummy; } ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int EIO ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSBCOPY (int *,int *,int) ;
 int NFSD_DEBUG (int,char*,...) ;
 int PVFS ;
 int free (struct nfsrvsetacldsdorpc*,int ) ;
 int hz ;
 struct nfsrvsetacldsdorpc* malloc (int,int ,int ) ;
 int nfs_pnfsio (int ,struct nfsrvsetacldsdorpc*) ;
 scalar_t__ nfs_pnfsiothreads ;
 scalar_t__ nfsds_failerr (int) ;
 int nfsrv_setacldsdorpc (int *,struct ucred*,int *,struct vnode*,struct nfsmount*,struct acl*) ;
 int start_setacldsdorpc ;
 int tsleep (int *,int ,char*,int) ;

__attribute__((used)) static int
nfsrv_setacldsrpc(fhandle_t *fhp, struct ucred *cred, NFSPROC_T *p,
    struct vnode *vp, struct nfsmount **nmpp, int mirrorcnt, struct acl *aclp,
    int *failposp)
{
 struct nfsrvsetacldsdorpc *drpc, *tdrpc;
 int error, i, ret, timo;

 NFSD_DEBUG(4, "in nfsrv_setacldsrpc\n");
 drpc = ((void*)0);
 if (mirrorcnt > 1)
  tdrpc = drpc = malloc(sizeof(*drpc) * (mirrorcnt - 1), M_TEMP,
      M_WAITOK);





 error = 0;
 for (i = 0; i < mirrorcnt - 1; i++, tdrpc++) {
  tdrpc->done = 0;
  tdrpc->inprog = 0;
  NFSBCOPY(fhp, &tdrpc->fh, sizeof(*fhp));
  tdrpc->nmp = *nmpp;
  tdrpc->vp = vp;
  tdrpc->cred = cred;
  tdrpc->p = p;
  tdrpc->aclp = aclp;
  tdrpc->err = 0;
  ret = EIO;
  if (nfs_pnfsiothreads != 0) {
   ret = nfs_pnfsio(start_setacldsdorpc, tdrpc);
   NFSD_DEBUG(4, "nfsrv_setacldsrpc: nfs_pnfsio=%d\n",
       ret);
  }
  if (ret != 0) {
   ret = nfsrv_setacldsdorpc(fhp, cred, p, vp, *nmpp,
       aclp);
   if (nfsds_failerr(ret) && *failposp == -1)
    *failposp = i;
   else if (error == 0 && ret != 0)
    error = ret;
  }
  nmpp++;
  fhp++;
 }
 ret = nfsrv_setacldsdorpc(fhp, cred, p, vp, *nmpp, aclp);
 if (nfsds_failerr(ret) && *failposp == -1 && mirrorcnt > 1)
  *failposp = mirrorcnt - 1;
 else if (error == 0 && ret != 0)
  error = ret;
 NFSD_DEBUG(4, "nfsrv_setacldsrpc: aft setextat=%d\n", error);
 tdrpc = drpc;
 timo = hz / 50;
 if (timo < 1)
  timo = 1;
 for (i = 0; i < mirrorcnt - 1; i++, tdrpc++) {

  while (tdrpc->inprog != 0 && tdrpc->done == 0)
   tsleep(&tdrpc->tsk, PVFS, "srvacds", timo);
  if (nfsds_failerr(tdrpc->err) && *failposp == -1)
   *failposp = i;
  else if (error == 0 && tdrpc->err != 0)
   error = tdrpc->err;
 }
 free(drpc, M_TEMP);
 return (error);
}
