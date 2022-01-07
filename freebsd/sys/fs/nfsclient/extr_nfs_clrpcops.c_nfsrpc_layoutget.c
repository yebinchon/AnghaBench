
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_repstat; int nd_mrep; int nd_flag; } ;
struct nfsmount {int nm_sockreq; } ;
struct nfsclflayouthead {int dummy; } ;
typedef int nfsv4stateid_t ;
typedef int NFSPROC_T ;


 int ND_USEGSSNAME ;
 int NFSCL_DEBUG (int,char*,int,int) ;
 int NFSPROC_LAYOUTGET ;
 int NFS_PROG ;
 int NFS_VER4 ;
 int mbuf_freem (int ) ;
 int newnfs_request (struct nfsrv_descript*,struct nfsmount*,int *,int *,int *,int *,struct ucred*,int ,int ,int *,int,int *,int *) ;
 int nfscl_reqstart (struct nfsrv_descript*,int ,struct nfsmount*,int *,int,int *,int *,int ,int ) ;
 int nfsrv_parselayoutget (struct nfsrv_descript*,int *,int*,struct nfsclflayouthead*) ;
 int nfsrv_setuplayoutget (struct nfsrv_descript*,int,int ,int ,int ,int *,int,int,int ) ;

__attribute__((used)) static int
nfsrpc_layoutget(struct nfsmount *nmp, uint8_t *fhp, int fhlen, int iomode,
    uint64_t offset, uint64_t len, uint64_t minlen, int layouttype,
    int layoutlen, nfsv4stateid_t *stateidp, int *retonclosep,
    struct nfsclflayouthead *flhp, struct ucred *cred, NFSPROC_T *p,
    void *stuff)
{
 struct nfsrv_descript nfsd, *nd = &nfsd;
 int error;

 nfscl_reqstart(nd, NFSPROC_LAYOUTGET, nmp, fhp, fhlen, ((void*)0), ((void*)0), 0,
     0);
 nfsrv_setuplayoutget(nd, iomode, offset, len, minlen, stateidp,
     layouttype, layoutlen, 0);
 nd->nd_flag |= ND_USEGSSNAME;
 error = newnfs_request(nd, nmp, ((void*)0), &nmp->nm_sockreq, ((void*)0), p, cred,
     NFS_PROG, NFS_VER4, ((void*)0), 1, ((void*)0), ((void*)0));
 NFSCL_DEBUG(4, "layget err=%d st=%d\n", error, nd->nd_repstat);
 if (error != 0)
  return (error);
 if (nd->nd_repstat == 0)
  error = nfsrv_parselayoutget(nd, stateidp, retonclosep, flhp);
 if (error == 0 && nd->nd_repstat != 0)
  error = nd->nd_repstat;
 mbuf_freem(nd->nd_mrep);
 return (error);
}
