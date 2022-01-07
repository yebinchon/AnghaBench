
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vnode_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int8_t ;
struct ucred {int dummy; } ;
struct nfsmount {int nm_clp; } ;
struct nfsclsession {int nfsess_maxcache; } ;
struct nfsclopen {int dummy; } ;
struct TYPE_5__ {int * other; int seqid; } ;
struct nfscllayout {TYPE_1__ nfsly_stateid; } ;
struct nfsclflayouthead {int dummy; } ;
struct nfsclflayout {int dummy; } ;
struct nfscldeleg {int dummy; } ;
struct TYPE_6__ {int * other; int seqid; } ;
typedef TYPE_2__ nfsv4stateid_t ;
typedef int NFSPROC_T ;


 int LIST_INIT (struct nfsclflayouthead*) ;
 int NFSCL_DEBUG (int,char*,...) ;
 scalar_t__ NFSHASFLEXFILE (struct nfsmount*) ;
 int NFSLAYOUT_FLEXFILE ;
 int NFSLAYOUT_NFSV4_1_FILES ;
 int NFSX_STATEID ;
 int NFSX_UNSIGNED ;
 struct nfscllayout* nfscl_getlayout (int ,int *,int,int ,struct nfsclflayout**,int*) ;
 int nfscl_rellayout (struct nfscllayout*,int) ;
 struct nfsclsession* nfsmnt_mdssession (struct nfsmount*) ;
 int nfsrpc_layoutgetres (struct nfsmount*,int ,int *,int,TYPE_2__*,int,int *,struct nfscllayout**,struct nfsclflayouthead*,int,int,int*,struct ucred*,int *) ;
 int nfsrpc_openlayoutrpc (struct nfsmount*,int ,int *,int,int *,int,int ,struct nfsclopen*,int *,int,struct nfscldeleg**,TYPE_2__*,int,int,int,int*,struct nfsclflayouthead*,int*,struct ucred*,int *) ;
 int nfsrpc_openrpc (struct nfsmount*,int ,int *,int,int *,int,int ,struct nfsclopen*,int *,int,struct nfscldeleg**,int ,int ,struct ucred*,int *,int ,int ) ;

__attribute__((used)) static int
nfsrpc_getopenlayout(struct nfsmount *nmp, vnode_t vp, u_int8_t *nfhp,
    int fhlen, uint8_t *newfhp, int newfhlen, uint32_t mode,
    struct nfsclopen *op, uint8_t *name, int namelen, struct nfscldeleg **dpp,
    struct ucred *cred, NFSPROC_T *p)
{
 struct nfscllayout *lyp;
 struct nfsclflayout *flp;
 struct nfsclflayouthead flh;
 int error, islocked, layoutlen, recalled, retonclose, usecurstateid;
 int layouttype, laystat;
 nfsv4stateid_t stateid;
 struct nfsclsession *tsep;

 error = 0;
 if (NFSHASFLEXFILE(nmp))
  layouttype = NFSLAYOUT_FLEXFILE;
 else
  layouttype = NFSLAYOUT_NFSV4_1_FILES;





 lyp = nfscl_getlayout(nmp->nm_clp, newfhp, newfhlen, 0, &flp,
     &recalled);
 NFSCL_DEBUG(4, "nfsrpc_getopenlayout nfscl_getlayout lyp=%p\n", lyp);
 if (lyp == ((void*)0))
  islocked = 0;
 else if (flp != ((void*)0))
  islocked = 1;
 else
  islocked = 2;
 if ((lyp == ((void*)0) || flp == ((void*)0)) && recalled == 0) {
  LIST_INIT(&flh);
  tsep = nfsmnt_mdssession(nmp);
  layoutlen = tsep->nfsess_maxcache - (NFSX_STATEID +
      3 * NFSX_UNSIGNED);
  if (lyp == ((void*)0))
   usecurstateid = 1;
  else {
   usecurstateid = 0;
   stateid.seqid = lyp->nfsly_stateid.seqid;
   stateid.other[0] = lyp->nfsly_stateid.other[0];
   stateid.other[1] = lyp->nfsly_stateid.other[1];
   stateid.other[2] = lyp->nfsly_stateid.other[2];
  }
  error = nfsrpc_openlayoutrpc(nmp, vp, nfhp, fhlen,
      newfhp, newfhlen, mode, op, name, namelen,
      dpp, &stateid, usecurstateid, layouttype, layoutlen,
      &retonclose, &flh, &laystat, cred, p);
  NFSCL_DEBUG(4, "aft nfsrpc_openlayoutrpc laystat=%d err=%d\n",
      laystat, error);
  laystat = nfsrpc_layoutgetres(nmp, vp, newfhp, newfhlen,
      &stateid, retonclose, ((void*)0), &lyp, &flh, layouttype, laystat,
      &islocked, cred, p);
 } else
  error = nfsrpc_openrpc(nmp, vp, nfhp, fhlen, newfhp, newfhlen,
      mode, op, name, namelen, dpp, 0, 0, cred, p, 0, 0);
 if (islocked == 2)
  nfscl_rellayout(lyp, 1);
 else if (islocked == 1)
  nfscl_rellayout(lyp, 0);
 return (error);
}
