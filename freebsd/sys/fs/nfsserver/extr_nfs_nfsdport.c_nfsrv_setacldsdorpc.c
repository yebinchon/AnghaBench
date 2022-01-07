
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_repstat; int nd_mrep; } ;
struct nfsmount {int nm_sockreq; } ;
struct acl {int dummy; } ;
struct TYPE_3__ {int* other; int seqid; } ;
typedef TYPE_1__ nfsv4stateid_t ;
typedef int nfsattrbit_t ;
typedef int fhandle_t ;
typedef int NFSPROC_T ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSATTRBIT_ACL ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSPROC_SETACL ;
 int NFSSETBIT_ATTRBIT (int *,int ) ;
 int NFSSTATEID_PUTSTATEID ;
 int NFSZERO_ATTRBIT (int *) ;
 int NFS_PROG ;
 int NFS_VER4 ;
 int free (struct nfsrv_descript*,int ) ;
 int m_freem (int ) ;
 struct nfsrv_descript* malloc (int,int ,int) ;
 int newnfs_request (struct nfsrv_descript*,struct nfsmount*,int *,int *,int *,int *,struct ucred*,int ,int ,int *,int,int *,int *) ;
 int nfscl_reqstart (struct nfsrv_descript*,int ,struct nfsmount*,int *,int,int *,int *,int ,int ) ;
 int nfsm_stateidtom (struct nfsrv_descript*,TYPE_1__*,int ) ;
 int nfsv4_fillattr (struct nfsrv_descript*,int *,struct vnode*,struct acl*,int *,int *,int ,int *,int *,int *,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
nfsrv_setacldsdorpc(fhandle_t *fhp, struct ucred *cred, NFSPROC_T *p,
    struct vnode *vp, struct nfsmount *nmp, struct acl *aclp)
{
 struct nfsrv_descript *nd;
 nfsv4stateid_t st;
 nfsattrbit_t attrbits;
 int error;

 NFSD_DEBUG(4, "in nfsrv_setacldsdorpc\n");
 nd = malloc(sizeof(*nd), M_TEMP, M_WAITOK | M_ZERO);






 st.other[0] = 0x55555555;
 st.other[1] = 0x55555555;
 st.other[2] = 0x55555555;
 st.seqid = 0xffffffff;
 nfscl_reqstart(nd, NFSPROC_SETACL, nmp, (u_int8_t *)fhp, sizeof(*fhp),
     ((void*)0), ((void*)0), 0, 0);
 nfsm_stateidtom(nd, &st, NFSSTATEID_PUTSTATEID);
 NFSZERO_ATTRBIT(&attrbits);
 NFSSETBIT_ATTRBIT(&attrbits, NFSATTRBIT_ACL);





 nfsv4_fillattr(nd, ((void*)0), vp, aclp, ((void*)0), ((void*)0), 0, &attrbits, ((void*)0),
     ((void*)0), 0, 0, 0, 0, 0, ((void*)0));
 error = newnfs_request(nd, nmp, ((void*)0), &nmp->nm_sockreq, ((void*)0), p, cred,
     NFS_PROG, NFS_VER4, ((void*)0), 1, ((void*)0), ((void*)0));
 if (error != 0) {
  free(nd, M_TEMP);
  return (error);
 }
 NFSD_DEBUG(4, "nfsrv_setacldsdorpc: aft setaclrpc=%d\n",
     nd->nd_repstat);
 error = nd->nd_repstat;
 m_freem(nd->nd_mrep);
 free(nd, M_TEMP);
 return (error);
}
