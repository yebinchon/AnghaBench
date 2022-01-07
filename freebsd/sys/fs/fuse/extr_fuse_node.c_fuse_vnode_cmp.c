
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vnode {int dummy; } ;


 scalar_t__ VTOI (struct vnode*) ;

int
fuse_vnode_cmp(struct vnode *vp, void *nidp)
{
 return (VTOI(vp) != *((uint64_t *)nidp));
}
