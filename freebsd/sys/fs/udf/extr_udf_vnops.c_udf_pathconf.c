
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_pathconf_args {int a_name; int* a_retval; TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_type; } ;


 int EINVAL ;
 int MAXPATHLEN ;
 int NAME_MAX ;
 int PIPE_BUF ;
 int VDIR ;
 int VFIFO ;






 int vop_stdpathconf (struct vop_pathconf_args*) ;

__attribute__((used)) static int
udf_pathconf(struct vop_pathconf_args *a)
{

 switch (a->a_name) {
 case 133:
  *a->a_retval = 64;
  return (0);
 case 132:
  *a->a_retval = 65535;
  return (0);
 case 131:
  *a->a_retval = NAME_MAX;
  return (0);
 case 128:
  *a->a_retval = MAXPATHLEN;
  return (0);
 case 130:
  *a->a_retval = 1;
  return (0);
 case 129:
  if (a->a_vp->v_type == VDIR || a->a_vp->v_type == VFIFO) {
   *a->a_retval = PIPE_BUF;
   return (0);
  }
  return (EINVAL);
 default:
  return (vop_stdpathconf(a));
 }
}
