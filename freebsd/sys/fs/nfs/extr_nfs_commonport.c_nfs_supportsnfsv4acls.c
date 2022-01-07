
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int VOP_PATHCONF (struct vnode*,int ,long*) ;
 int _PC_ACL_NFS4 ;
 scalar_t__ nfsrv_useacl ;

int
nfs_supportsnfsv4acls(struct vnode *vp)
{
 int error;
 long retval;

 ASSERT_VOP_LOCKED(vp, "nfs supports nfsv4acls");

 if (nfsrv_useacl == 0)
  return (0);
 error = VOP_PATHCONF(vp, _PC_ACL_NFS4, &retval);
 if (error == 0 && retval != 0)
  return (1);
 return (0);
}
