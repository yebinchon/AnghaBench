
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_print_args {int a_vp; } ;
struct denode {TYPE_1__* de_pmp; int de_diroffset; int de_dirclust; int de_StartCluster; } ;
struct TYPE_2__ {int pm_dev; } ;


 struct denode* VTODE (int ) ;
 char* devtoname (int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static int
msdosfs_print(struct vop_print_args *ap)
{
 struct denode *dep = VTODE(ap->a_vp);

 printf("\tstartcluster %lu, dircluster %lu, diroffset %lu, ",
        dep->de_StartCluster, dep->de_dirclust, dep->de_diroffset);
 printf("on dev %s\n", devtoname(dep->de_pmp->pm_dev));
 return (0);
}
