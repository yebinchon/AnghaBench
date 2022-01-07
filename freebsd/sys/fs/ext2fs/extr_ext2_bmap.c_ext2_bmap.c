
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_bmap_args {int * a_bnp; int a_runb; int a_runp; int a_bn; int a_vp; int ** a_bop; } ;
typedef int daddr_t ;
struct TYPE_4__ {int i_flag; TYPE_1__* i_devvp; } ;
struct TYPE_3__ {int v_bufobj; } ;


 int IN_E4EXTENTS ;
 TYPE_2__* VTOI (int ) ;
 int ext2_bmaparray (int ,int ,int *,int ,int ) ;
 int ext4_bmapext (int ,int ,int *,int ,int ) ;

int
ext2_bmap(struct vop_bmap_args *ap)
{
 daddr_t blkno;
 int error;





 if (ap->a_bop != ((void*)0))
  *ap->a_bop = &VTOI(ap->a_vp)->i_devvp->v_bufobj;
 if (ap->a_bnp == ((void*)0))
  return (0);

 if (VTOI(ap->a_vp)->i_flag & IN_E4EXTENTS)
  error = ext4_bmapext(ap->a_vp, ap->a_bn, &blkno,
      ap->a_runp, ap->a_runb);
 else
  error = ext2_bmaparray(ap->a_vp, ap->a_bn, &blkno,
      ap->a_runp, ap->a_runb);
 *ap->a_bnp = blkno;
 return (error);
}
