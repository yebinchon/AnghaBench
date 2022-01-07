
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int MBI_ADMIN ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_vnode_check_setflags(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, u_long flags)
{

 return (ugidfw_check_vp(cred, vp, MBI_ADMIN));
}
