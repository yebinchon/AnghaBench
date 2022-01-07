
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_pathconf_args {int a_name; int* a_retval; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {int fd_fd; int fd_type; } ;


 int Froot ;
 int LK_RETRY ;
 int LK_SHARED ;
 int NAME_MAX ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_1__* VTOFDESC (struct vnode*) ;


 int curthread ;
 int kern_fpathconf (int ,int ,int,int*) ;
 int vn_lock (struct vnode*,int) ;
 int vop_stdpathconf (struct vop_pathconf_args*) ;
 int vref (struct vnode*) ;
 int vunref (struct vnode*) ;

__attribute__((used)) static int
fdesc_pathconf(struct vop_pathconf_args *ap)
{
 struct vnode *vp = ap->a_vp;
 int error;

 switch (ap->a_name) {
 case 128:
  *ap->a_retval = NAME_MAX;
  return (0);
 case 129:
  if (VTOFDESC(vp)->fd_type == Froot)
   *ap->a_retval = 2;
  else
   *ap->a_retval = 1;
  return (0);
 default:
  if (VTOFDESC(vp)->fd_type == Froot)
   return (vop_stdpathconf(ap));
  vref(vp);
  VOP_UNLOCK(vp, 0);
  error = kern_fpathconf(curthread, VTOFDESC(vp)->fd_fd,
      ap->a_name, ap->a_retval);
  vn_lock(vp, LK_SHARED | LK_RETRY);
  vunref(vp);
  return (error);
 }
}
