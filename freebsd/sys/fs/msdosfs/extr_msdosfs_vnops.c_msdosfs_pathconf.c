
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_pathconf_args {int a_name; int* a_retval; int a_vp; } ;
struct msdosfsmount {int pm_flags; } ;
struct TYPE_2__ {struct msdosfsmount* de_pmp; } ;


 int MSDOSFSMNT_LONGNAME ;
 TYPE_1__* VTODE (int ) ;
 int WIN_MAXLEN ;





 int vop_stdpathconf (struct vop_pathconf_args*) ;

__attribute__((used)) static int
msdosfs_pathconf(struct vop_pathconf_args *ap)
{
 struct msdosfsmount *pmp = VTODE(ap->a_vp)->de_pmp;

 switch (ap->a_name) {
 case 131:
  *ap->a_retval = 32;
  return (0);
 case 130:
  *ap->a_retval = 1;
  return (0);
 case 129:
  *ap->a_retval = pmp->pm_flags & MSDOSFSMNT_LONGNAME ? WIN_MAXLEN : 12;
  return (0);
 case 132:
  *ap->a_retval = 1;
  return (0);
 case 128:
  *ap->a_retval = 0;
  return (0);
 default:
  return (vop_stdpathconf(ap));
 }

}
