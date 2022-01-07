
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_kqfilter_args {int dummy; } ;
struct TYPE_2__ {int (* vop_kqfilter ) (struct vop_kqfilter_args*) ;} ;


 TYPE_1__ fifo_specops ;
 int stub1 (struct vop_kqfilter_args*) ;
 int vfs_kqfilter (struct vop_kqfilter_args*) ;

__attribute__((used)) static int
ext2fifo_kqfilter(struct vop_kqfilter_args *ap)
{
 int error;

 error = fifo_specops.vop_kqfilter(ap);
 if (error)
  error = vfs_kqfilter(ap);
 return (error);
}
