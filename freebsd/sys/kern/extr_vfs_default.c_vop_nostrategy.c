
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vop_strategy_args {TYPE_1__* a_bp; int a_vp; } ;
struct TYPE_3__ {int b_error; int b_ioflags; } ;


 int BIO_ERROR ;
 int EOPNOTSUPP ;
 int bufdone (TYPE_1__*) ;
 int printf (char*,TYPE_1__*) ;
 int vn_printf (int ,char*) ;

__attribute__((used)) static int
vop_nostrategy (struct vop_strategy_args *ap)
{
 printf("No strategy for buffer at %p\n", ap->a_bp);
 vn_printf(ap->a_vp, "vnode ");
 ap->a_bp->b_ioflags |= BIO_ERROR;
 ap->a_bp->b_error = EOPNOTSUPP;
 bufdone(ap->a_bp);
 return (EOPNOTSUPP);
}
