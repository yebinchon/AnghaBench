
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsrv_descript {int nd_repstat; int nd_mrep; } ;
struct nfsmount {int nm_sockreq; } ;
typedef int nfsattrbit_t ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 scalar_t__ LK_EXCLUSIVE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSATTRBIT_CHANGE ;
 int NFSATTRBIT_SIZE ;
 int NFSATTRBIT_TIMEACCESS ;
 int NFSATTRBIT_TIMEMODIFY ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSPROC_GETATTR ;
 int NFSSETBIT_ATTRBIT (int *,int ) ;
 int NFSZERO_ATTRBIT (int *) ;
 int NFS_PROG ;
 int NFS_VER4 ;
 scalar_t__ VOP_ISLOCKED (struct vnode*) ;
 int free (struct nfsrv_descript*,int ) ;
 int m_freem (int ) ;
 struct nfsrv_descript* malloc (int,int ,int) ;
 int newnfs_request (struct nfsrv_descript*,struct nfsmount*,int *,int *,int *,int *,struct ucred*,int ,int ,int *,int,int *,int *) ;
 int nfscl_reqstart (struct nfsrv_descript*,int ,struct nfsmount*,int *,int,int *,int *,int ,int ) ;
 int nfsrv_putattrbit (struct nfsrv_descript*,int *) ;
 int nfsrv_setextattr (struct vnode*,struct nfsvattr*,int *) ;
 int nfsv4_loadattr (struct nfsrv_descript*,int *,struct nfsvattr*,int *,int *,int ,int *,int *,int *,int *,int *,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int
nfsrv_getattrdsrpc(fhandle_t *fhp, struct ucred *cred, NFSPROC_T *p,
    struct vnode *vp, struct nfsmount *nmp, struct nfsvattr *nap)
{
 struct nfsrv_descript *nd;
 int error;
 nfsattrbit_t attrbits;

 NFSD_DEBUG(4, "in nfsrv_getattrdsrpc\n");
 nd = malloc(sizeof(*nd), M_TEMP, M_WAITOK | M_ZERO);
 nfscl_reqstart(nd, NFSPROC_GETATTR, nmp, (u_int8_t *)fhp,
     sizeof(fhandle_t), ((void*)0), ((void*)0), 0, 0);
 NFSZERO_ATTRBIT(&attrbits);
 NFSSETBIT_ATTRBIT(&attrbits, NFSATTRBIT_SIZE);
 NFSSETBIT_ATTRBIT(&attrbits, NFSATTRBIT_CHANGE);
 NFSSETBIT_ATTRBIT(&attrbits, NFSATTRBIT_TIMEACCESS);
 NFSSETBIT_ATTRBIT(&attrbits, NFSATTRBIT_TIMEMODIFY);
 (void) nfsrv_putattrbit(nd, &attrbits);
 error = newnfs_request(nd, nmp, ((void*)0), &nmp->nm_sockreq, ((void*)0), p, cred,
     NFS_PROG, NFS_VER4, ((void*)0), 1, ((void*)0), ((void*)0));
 if (error != 0) {
  free(nd, M_TEMP);
  return (error);
 }
 NFSD_DEBUG(4, "nfsrv_getattrdsrpc: aft getattrrpc=%d\n",
     nd->nd_repstat);
 if (nd->nd_repstat == 0) {
  error = nfsv4_loadattr(nd, ((void*)0), nap, ((void*)0), ((void*)0), 0,
      ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0),
      ((void*)0), ((void*)0));
  if (error == 0 && VOP_ISLOCKED(vp) == LK_EXCLUSIVE) {
   error = nfsrv_setextattr(vp, nap, p);
   NFSD_DEBUG(4, "nfsrv_getattrdsrpc: aft setextat=%d\n",
       error);
  }
 } else
  error = nd->nd_repstat;
 m_freem(nd->nd_mrep);
 free(nd, M_TEMP);
 NFSD_DEBUG(4, "nfsrv_getattrdsrpc error=%d\n", error);
 return (error);
}
