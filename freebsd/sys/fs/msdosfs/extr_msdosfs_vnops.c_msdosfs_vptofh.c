
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vptofh_args {scalar_t__ a_fhp; int a_vp; } ;
struct denode {int de_diroffset; int de_dirclust; } ;
struct defid {int defid_len; int defid_dirofs; int defid_dirclust; } ;


 struct denode* VTODE (int ) ;

__attribute__((used)) static int
msdosfs_vptofh(struct vop_vptofh_args *ap)
{
 struct denode *dep;
 struct defid *defhp;

 dep = VTODE(ap->a_vp);
 defhp = (struct defid *)ap->a_fhp;
 defhp->defid_len = sizeof(struct defid);
 defhp->defid_dirclust = dep->de_dirclust;
 defhp->defid_dirofs = dep->de_diroffset;

 return (0);
}
