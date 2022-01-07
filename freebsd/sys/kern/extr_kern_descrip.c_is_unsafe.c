
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;


 scalar_t__ DTYPE_VNODE ;
 int VV_PROCDEP ;

__attribute__((used)) static bool
is_unsafe(struct file *fp)
{
 struct vnode *vp;

 if (fp->f_type != DTYPE_VNODE)
  return (0);

 vp = fp->f_vnode;
 return ((vp->v_vflag & VV_PROCDEP) != 0);
}
