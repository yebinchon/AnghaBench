
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vop_getacl_args {scalar_t__ a_type; int a_td; int a_aclp; int a_cred; int a_vp; } ;
typedef int gid_t ;


 scalar_t__ ACL_TYPE_NFS4 ;
 int EOPNOTSUPP ;
 int EPERM ;
 int NFSERR_STALE ;
 int nfscl_maperr (int ,int,int ,int ) ;
 int nfsrpc_getacl (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
nfs_getacl(struct vop_getacl_args *ap)
{
 int error;

 if (ap->a_type != ACL_TYPE_NFS4)
  return (EOPNOTSUPP);
 error = nfsrpc_getacl(ap->a_vp, ap->a_cred, ap->a_td, ap->a_aclp,
     ((void*)0));
 if (error > NFSERR_STALE) {
  (void) nfscl_maperr(ap->a_td, error, (uid_t)0, (gid_t)0);
  error = EPERM;
 }
 return (error);
}
