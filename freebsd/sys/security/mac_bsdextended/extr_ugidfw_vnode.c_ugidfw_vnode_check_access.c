
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
typedef int accmode_t ;


 int ugidfw_accmode2mbi (int ) ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_vnode_check_access(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, accmode_t accmode)
{

 return (ugidfw_check_vp(cred, vp, ugidfw_accmode2mbi(accmode)));
}
