
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint64_t ;
struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_repstat; int nd_mrep; } ;
struct nfsmount {int dummy; } ;
struct acl {int dummy; } ;
typedef int nfsv4stateid_t ;
typedef int nfsattrbit_t ;
typedef int NFSPROC_T ;


 int EOPNOTSUPP ;
 int NFSATTRBIT_ACL ;
 int NFSCL_REQSTART (struct nfsrv_descript*,int ,int ) ;
 int NFSHASNFSV4 (struct nfsmount*) ;
 int NFSPROC_SETACL ;
 int NFSSETBIT_ATTRBIT (int *,int ) ;
 int NFSSTATEID_PUTSTATEID ;
 int NFSZERO_ATTRBIT (int *) ;
 struct nfsmount* VFSTONFS (int ) ;
 int mbuf_freem (int ) ;
 int nfscl_request (struct nfsrv_descript*,int ,int *,struct ucred*,void*) ;
 int nfsm_stateidtom (struct nfsrv_descript*,int *,int ) ;
 int nfsv4_fillattr (struct nfsrv_descript*,int ,int ,struct acl*,int *,int *,int ,int *,int *,int *,int ,int ,int ,int ,int ,int *) ;
 int vnode_mount (int ) ;

__attribute__((used)) static int
nfsrpc_setaclrpc(vnode_t vp, struct ucred *cred, NFSPROC_T *p,
    struct acl *aclp, nfsv4stateid_t *stateidp, void *stuff)
{
 struct nfsrv_descript nfsd, *nd = &nfsd;
 int error;
 nfsattrbit_t attrbits;
 struct nfsmount *nmp = VFSTONFS(vnode_mount(vp));

 if (!NFSHASNFSV4(nmp))
  return (EOPNOTSUPP);
 NFSCL_REQSTART(nd, NFSPROC_SETACL, vp);
 nfsm_stateidtom(nd, stateidp, NFSSTATEID_PUTSTATEID);
 NFSZERO_ATTRBIT(&attrbits);
 NFSSETBIT_ATTRBIT(&attrbits, NFSATTRBIT_ACL);
 (void) nfsv4_fillattr(nd, vnode_mount(vp), vp, aclp, ((void*)0), ((void*)0), 0,
     &attrbits, ((void*)0), ((void*)0), 0, 0, 0, 0, (uint64_t)0, ((void*)0));
 error = nfscl_request(nd, vp, p, cred, stuff);
 if (error)
  return (error);

 mbuf_freem(nd->nd_mrep);
 return (nd->nd_repstat);
}
