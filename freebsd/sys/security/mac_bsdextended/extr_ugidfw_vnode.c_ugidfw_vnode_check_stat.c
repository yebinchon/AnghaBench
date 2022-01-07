
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int MBI_STAT ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_vnode_check_stat(struct ucred *active_cred,
    struct ucred *file_cred, struct vnode *vp, struct label *vplabel)
{

 return (ugidfw_check_vp(active_cred, vp, MBI_STAT));
}
