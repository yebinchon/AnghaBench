
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fsync_args {scalar_t__ a_waitfor; int a_vp; } ;


 scalar_t__ MNT_WAIT ;
 int ext2_update (int ,int) ;
 int vop_stdfsync (struct vop_fsync_args*) ;

__attribute__((used)) static int
ext2_fsync(struct vop_fsync_args *ap)
{




 vop_stdfsync(ap);

 return (ext2_update(ap->a_vp, ap->a_waitfor == MNT_WAIT));
}
