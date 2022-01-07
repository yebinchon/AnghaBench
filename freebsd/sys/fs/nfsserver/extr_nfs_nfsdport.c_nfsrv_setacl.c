
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct TYPE_5__ {int acl_cnt; } ;
typedef int NFSPROC_T ;
typedef TYPE_1__ NFSACL_T ;


 int ACL_MAX_ENTRIES ;
 int ACL_TYPE_NFS4 ;
 int ENOENT ;
 int NFSERR_ATTRNOTSUPP ;
 int NFSEXITCODE (int) ;
 int VOP_SETACL (struct vnode*,int ,TYPE_1__*,struct ucred*,int *) ;
 scalar_t__ nfs_supportsnfsv4acls (struct vnode*) ;
 int nfsrv_dssetacl (struct vnode*,TYPE_1__*,struct ucred*,int *) ;
 scalar_t__ nfsrv_useacl ;

int
nfsrv_setacl(struct vnode *vp, NFSACL_T *aclp, struct ucred *cred, NFSPROC_T *p)
{
 int error;

 if (nfsrv_useacl == 0 || nfs_supportsnfsv4acls(vp) == 0) {
  error = NFSERR_ATTRNOTSUPP;
  goto out;
 }






 if (aclp->acl_cnt > (ACL_MAX_ENTRIES - 6) / 2) {
  error = NFSERR_ATTRNOTSUPP;
  goto out;
 }
 error = VOP_SETACL(vp, ACL_TYPE_NFS4, aclp, cred, p);
 if (error == 0) {
  error = nfsrv_dssetacl(vp, aclp, cred, p);
  if (error == ENOENT)
   error = 0;
 }

out:
 NFSEXITCODE(error);
 return (error);
}
