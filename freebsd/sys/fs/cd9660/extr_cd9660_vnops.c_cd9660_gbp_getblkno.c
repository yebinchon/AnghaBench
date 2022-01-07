
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_ooffset_t ;
struct vnode {int dummy; } ;
typedef int daddr_t ;
struct TYPE_2__ {int i_mnt; } ;


 TYPE_1__* VTOI (struct vnode*) ;
 int lblkno (int ,int ) ;

__attribute__((used)) static daddr_t
cd9660_gbp_getblkno(struct vnode *vp, vm_ooffset_t off)
{

 return (lblkno(VTOI(vp)->i_mnt, off));
}
