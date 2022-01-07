
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;


 int MBI_EXEC ;
 int MBI_READ ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int) ;

int
ugidfw_vnode_check_exec(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct image_params *imgp,
    struct label *execlabel)
{

 return (ugidfw_check_vp(cred, vp, MBI_READ|MBI_EXEC));
}
