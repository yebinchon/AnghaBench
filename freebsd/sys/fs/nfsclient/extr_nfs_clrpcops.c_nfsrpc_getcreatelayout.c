
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int dummy; } ;
struct nfsfh {int nfh_len; int * nfh_fh; } ;
struct nfsclsession {int nfsess_maxcache; } ;
struct nfsclowner {int dummy; } ;
struct nfscllayout {int dummy; } ;
struct nfsclflayouthead {int dummy; } ;
struct nfscldeleg {int dummy; } ;
typedef int nfsv4stateid_t ;
typedef int nfsquad_t ;
struct TYPE_5__ {int v_mount; } ;
typedef int NFSPROC_T ;


 int LIST_INIT (struct nfsclflayouthead*) ;
 int NFSCL_DEBUG (int,char*,int,int) ;
 scalar_t__ NFSHASFLEXFILE (struct nfsmount*) ;
 int NFSLAYOUT_FLEXFILE ;
 int NFSLAYOUT_NFSV4_1_FILES ;
 int NFSX_STATEID ;
 int NFSX_UNSIGNED ;
 struct nfsmount* VFSTONFS (int ) ;
 int nfscl_rellayout (struct nfscllayout*,int ) ;
 struct nfsclsession* nfsmnt_mdssession (struct nfsmount*) ;
 int nfsrpc_createlayout (TYPE_1__*,char*,int,struct vattr*,int ,int,struct nfsclowner*,struct nfscldeleg**,struct ucred*,int *,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,void*,int*,int *,int,int,int,int*,struct nfsclflayouthead*,int*) ;
 int nfsrpc_layoutgetres (struct nfsmount*,TYPE_1__*,int *,int ,int *,int,int *,struct nfscllayout**,struct nfsclflayouthead*,int,int,int *,struct ucred*,int *) ;

__attribute__((used)) static int
nfsrpc_getcreatelayout(vnode_t dvp, char *name, int namelen, struct vattr *vap,
    nfsquad_t cverf, int fmode, struct nfsclowner *owp, struct nfscldeleg **dpp,
    struct ucred *cred, NFSPROC_T *p, struct nfsvattr *dnap,
    struct nfsvattr *nnap, struct nfsfh **nfhpp, int *attrflagp,
    int *dattrflagp, void *dstuff, int *unlockedp)
{
 struct nfscllayout *lyp;
 struct nfsclflayouthead flh;
 struct nfsfh *nfhp;
 struct nfsclsession *tsep;
 struct nfsmount *nmp;
 nfsv4stateid_t stateid;
 int error, layoutlen, layouttype, retonclose, laystat;

 error = 0;
 nmp = VFSTONFS(dvp->v_mount);
 if (NFSHASFLEXFILE(nmp))
  layouttype = NFSLAYOUT_FLEXFILE;
 else
  layouttype = NFSLAYOUT_NFSV4_1_FILES;
 LIST_INIT(&flh);
 tsep = nfsmnt_mdssession(nmp);
 layoutlen = tsep->nfsess_maxcache - (NFSX_STATEID + 3 * NFSX_UNSIGNED);
 error = nfsrpc_createlayout(dvp, name, namelen, vap, cverf, fmode,
     owp, dpp, cred, p, dnap, nnap, nfhpp, attrflagp, dattrflagp,
     dstuff, unlockedp, &stateid, 1, layouttype, layoutlen, &retonclose,
     &flh, &laystat);
 NFSCL_DEBUG(4, "aft nfsrpc_createlayoutrpc laystat=%d err=%d\n",
     laystat, error);
 lyp = ((void*)0);
 if (laystat == 0) {
  nfhp = *nfhpp;
  laystat = nfsrpc_layoutgetres(nmp, dvp, nfhp->nfh_fh,
      nfhp->nfh_len, &stateid, retonclose, ((void*)0), &lyp, &flh,
      layouttype, laystat, ((void*)0), cred, p);
 } else
  laystat = nfsrpc_layoutgetres(nmp, dvp, ((void*)0), 0, &stateid,
      retonclose, ((void*)0), &lyp, &flh, layouttype, laystat, ((void*)0),
      cred, p);
 if (laystat == 0)
  nfscl_rellayout(lyp, 0);
 return (error);
}
