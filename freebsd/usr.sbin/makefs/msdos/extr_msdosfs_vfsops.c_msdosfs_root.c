
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct denode* v_data; } ;
struct msdosfsmount {struct vnode* pm_devvp; } ;
struct denode {int dummy; } ;


 int MSDOSFSROOT ;
 int MSDOSFSROOT_OFS ;
 int deget (struct msdosfsmount*,int ,int ,struct denode**) ;
 int errno ;

int
msdosfs_root(struct msdosfsmount *pmp, struct vnode *vp) {
 struct denode *ndep;
 int error;

 *vp = *pmp->pm_devvp;
 if ((error = deget(pmp, MSDOSFSROOT, MSDOSFSROOT_OFS, &ndep)) != 0) {
  errno = error;
  return -1;
 }
 vp->v_data = ndep;
 return 0;
}
