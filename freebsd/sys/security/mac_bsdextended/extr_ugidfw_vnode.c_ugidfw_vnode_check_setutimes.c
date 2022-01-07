
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct timespec {int dummy; } ;
struct label {int dummy; } ;


 int MBI_ADMIN ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_vnode_check_setutimes(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct timespec atime, struct timespec utime)
{

 return (ugidfw_check_vp(cred, vp, MBI_ADMIN));
}
