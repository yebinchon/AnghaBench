
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int MBI_READ ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_vnode_check_readdir(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel)
{

 return (ugidfw_check_vp(cred, dvp, MBI_READ));
}
