
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct msdosfsmount {int dummy; } ;
struct mount {int dummy; } ;
struct denode {int dummy; } ;


 struct vnode* DETOV (struct denode*) ;
 int MSDOSFSROOT ;
 int MSDOSFSROOT_OFS ;
 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;
 int deget (struct msdosfsmount*,int ,int ,struct denode**) ;
 int printf (char*,struct mount*,struct msdosfsmount*) ;

__attribute__((used)) static int
msdosfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct msdosfsmount *pmp = VFSTOMSDOSFS(mp);
 struct denode *ndep;
 int error;




 error = deget(pmp, MSDOSFSROOT, MSDOSFSROOT_OFS, &ndep);
 if (error)
  return (error);
 *vpp = DETOV(ndep);
 return (0);
}
