
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_pathconf_args {int a_name; long* a_retval; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;


 int EINVAL ;
 long NAME_MAX ;
 long PIPE_BUF ;
 long TMPFS_LINK_MAX ;
 int VDIR ;
 int VFIFO ;







 int vop_stdpathconf (struct vop_pathconf_args*) ;

int
tmpfs_pathconf(struct vop_pathconf_args *v)
{
 struct vnode *vp = v->a_vp;
 int name = v->a_name;
 long *retval = v->a_retval;

 int error;

 error = 0;

 switch (name) {
 case 132:
  *retval = TMPFS_LINK_MAX;
  break;

 case 131:
  *retval = NAME_MAX;
  break;

 case 129:
  if (vp->v_type == VDIR || vp->v_type == VFIFO)
   *retval = PIPE_BUF;
  else
   error = EINVAL;
  break;

 case 134:
  *retval = 1;
  break;

 case 130:
  *retval = 1;
  break;

 case 128:
  *retval = 1;
  break;

 case 133:
  *retval = 64;
  break;

 default:
  error = vop_stdpathconf(v);
 }

 return error;
}
