
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_close_args {int dummy; } ;
struct TYPE_2__ {int (* vop_close ) (struct vop_close_args*) ;} ;


 TYPE_1__ fifo_specops ;
 int stub1 (struct vop_close_args*) ;

__attribute__((used)) static int
fuse_fifo_close(struct vop_close_args *ap)
{
 return (fifo_specops.vop_close(ap));
}
