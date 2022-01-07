
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_mount; } ;
typedef int daddr_t ;
struct TYPE_2__ {int um_fs; } ;


 TYPE_1__* VFSTOUFS (int ) ;
 int VTOI (struct vnode*) ;
 int blksize (int ,int ,int ) ;

__attribute__((used)) static int
ffs_gbp_getblksz(struct vnode *vp, daddr_t lbn)
{

 return (blksize(VFSTOUFS(vp->v_mount)->um_fs, VTOI(vp), lbn));
}
