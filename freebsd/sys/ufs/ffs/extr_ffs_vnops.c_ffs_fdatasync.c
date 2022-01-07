
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fdatasync_args {int a_vp; } ;


 int DATA_ONLY ;
 int MNT_WAIT ;
 int ffs_syncvnode (int ,int ,int ) ;

__attribute__((used)) static int
ffs_fdatasync(struct vop_fdatasync_args *ap)
{

 return (ffs_syncvnode(ap->a_vp, MNT_WAIT, DATA_ONLY));
}
