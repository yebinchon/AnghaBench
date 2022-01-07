
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const vm_ooffset_t ;
struct vnode {int dummy; } ;
typedef int const daddr_t ;


 int fuse_iosize (struct vnode*) ;

__attribute__((used)) static daddr_t
fuse_gbp_getblkno(struct vnode *vp, vm_ooffset_t off)
{
 const int biosize = fuse_iosize(vp);

 return (off / biosize);
}
