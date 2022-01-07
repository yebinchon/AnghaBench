
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct acl {int dummy; } ;
typedef int acl_type_t ;


 int MBI_ADMIN ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_check_setacl_vnode(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, acl_type_t type, struct acl *acl)
{

 return (ugidfw_check_vp(cred, vp, MBI_ADMIN));
}
