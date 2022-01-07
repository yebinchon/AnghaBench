
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_mode; int a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct inode {int i_flags; } ;


 int APPEND ;
 int DIP (struct inode*,int ) ;
 int EOPNOTSUPP ;
 int EPERM ;
 int FWRITE ;
 int O_APPEND ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 struct inode* VTOI (struct vnode*) ;
 int i_size ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;

__attribute__((used)) static int
ufs_open(struct vop_open_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct inode *ip;

 if (vp->v_type == VCHR || vp->v_type == VBLK)
  return (EOPNOTSUPP);

 ip = VTOI(vp);



 if ((ip->i_flags & APPEND) &&
     (ap->a_mode & (FWRITE | O_APPEND)) == FWRITE)
  return (EPERM);
 vnode_create_vobject(vp, DIP(ip, i_size), ap->a_td);
 return (0);
}
