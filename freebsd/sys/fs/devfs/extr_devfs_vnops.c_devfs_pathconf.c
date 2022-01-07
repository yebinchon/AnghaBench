
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_pathconf_args {int a_name; int* a_retval; TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_vflag; } ;


 int EINVAL ;
 int INT_MAX ;
 int MAXPATHLEN ;
 int MAX_CANON ;
 int MAX_INPUT ;
 int NAME_MAX ;
 int VV_ISTTY ;
 int _POSIX_VDISABLE ;
 int vop_stdpathconf (struct vop_pathconf_args*) ;

__attribute__((used)) static int
devfs_pathconf(struct vop_pathconf_args *ap)
{

 switch (ap->a_name) {
 case 135:
  *ap->a_retval = 64;
  return (0);
 case 130:
  *ap->a_retval = NAME_MAX;
  return (0);
 case 134:
  *ap->a_retval = INT_MAX;
  return (0);
 case 129:
  *ap->a_retval = MAXPATHLEN;
  return (0);
 case 132:
  if (ap->a_vp->v_vflag & VV_ISTTY) {
   *ap->a_retval = MAX_CANON;
   return (0);
  }
  return (EINVAL);
 case 131:
  if (ap->a_vp->v_vflag & VV_ISTTY) {
   *ap->a_retval = MAX_INPUT;
   return (0);
  }
  return (EINVAL);
 case 128:
  if (ap->a_vp->v_vflag & VV_ISTTY) {
   *ap->a_retval = _POSIX_VDISABLE;
   return (0);
  }
  return (EINVAL);
 case 133:







  *ap->a_retval = 0;

  return (0);
 case 136:
  *ap->a_retval = 1;
  return (0);
 default:
  return (vop_stdpathconf(ap));
 }

}
