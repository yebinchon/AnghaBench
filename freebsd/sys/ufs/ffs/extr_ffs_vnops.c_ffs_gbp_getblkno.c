
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_ooffset_t ;
struct vnode {int v_mount; } ;
typedef int daddr_t ;
struct TYPE_2__ {int um_fs; } ;


 TYPE_1__* VFSTOUFS (int ) ;
 int lblkno (int ,int ) ;

__attribute__((used)) static daddr_t
ffs_gbp_getblkno(struct vnode *vp, vm_ooffset_t off)
{

 return (lblkno(VFSTOUFS(vp->v_mount)->um_fs, off));
}
