
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_ooffset_t ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {TYPE_1__ v_bufobj; } ;
typedef int daddr_t ;



__attribute__((used)) static daddr_t
ncl_gbp_getblkno(struct vnode *vp, vm_ooffset_t off)
{

 return (off / vp->v_bufobj.bo_bsize);
}
