
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vector {int dummy; } ;
struct vnode {scalar_t__ v_type; int v_vflag; struct vop_vector* v_op; } ;
struct mount {int dummy; } ;
struct inode {scalar_t__ i_mode; scalar_t__ i_number; int i_modrev; } ;


 int EINVAL ;
 scalar_t__ EXT2_ROOTINO ;
 scalar_t__ IFTOVT (scalar_t__) ;
 scalar_t__ VFIFO ;
 scalar_t__ VNON ;
 struct inode* VTOI (struct vnode*) ;
 int VV_ROOT ;
 int init_va_filerev () ;

int
ext2_vinit(struct mount *mntp, struct vop_vector *fifoops, struct vnode **vpp)
{
 struct inode *ip;
 struct vnode *vp;

 vp = *vpp;
 ip = VTOI(vp);
 vp->v_type = IFTOVT(ip->i_mode);



 if (ip->i_mode != 0 && vp->v_type == VNON)
  return (EINVAL);
 if (vp->v_type == VFIFO)
  vp->v_op = fifoops;

 if (ip->i_number == EXT2_ROOTINO)
  vp->v_vflag |= VV_ROOT;
 ip->i_modrev = init_va_filerev();
 *vpp = vp;
 return (0);
}
