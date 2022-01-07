
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_pathconf_args {int a_name; int* a_retval; } ;


 int FUSE_LINK_MAX ;
 int LONG_MAX ;
 int MAXPATHLEN ;
 int MIN (int ,int ) ;
 int NAME_MAX ;





 int vop_stdpathconf (struct vop_pathconf_args*) ;

__attribute__((used)) static int
fuse_vnop_pathconf(struct vop_pathconf_args *ap)
{

 switch (ap->a_name) {
 case 132:
  *ap->a_retval = 64;
  return (0);
 case 130:
  *ap->a_retval = NAME_MAX;
  return (0);
 case 131:
  *ap->a_retval = MIN(LONG_MAX, FUSE_LINK_MAX);
  return (0);
 case 128:
  *ap->a_retval = MAXPATHLEN;
  return (0);
 case 129:
  *ap->a_retval = 1;
  return (0);
 default:
  return (vop_stdpathconf(ap));
 }
}
