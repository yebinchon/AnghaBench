
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct inode {scalar_t__ i_number; int i_devvp; } ;


 scalar_t__ VFIFO ;
 struct inode* VTOI (struct vnode*) ;
 int fifo_printinfo (struct vnode*) ;
 int printf (char*) ;
 int vn_printf (int ,char*,int ) ;

__attribute__((used)) static int
ext2_print(struct vop_print_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct inode *ip = VTOI(vp);

 vn_printf(ip->i_devvp, "\tino %ju", (uintmax_t)ip->i_number);
 if (vp->v_type == VFIFO)
  fifo_printinfo(vp);
 printf("\n");
 return (0);
}
