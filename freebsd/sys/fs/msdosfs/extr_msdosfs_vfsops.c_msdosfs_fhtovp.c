
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct msdosfsmount {int dummy; } ;
struct mount {int dummy; } ;
struct fid {int dummy; } ;
struct denode {int de_FileSize; } ;
struct defid {int defid_dirofs; int defid_dirclust; } ;


 struct vnode* DETOV (struct denode*) ;
 struct vnode* NULLVP ;
 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;
 int curthread ;
 int deget (struct msdosfsmount*,int ,int ,struct denode**) ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;

__attribute__((used)) static int
msdosfs_fhtovp(struct mount *mp, struct fid *fhp, int flags, struct vnode **vpp)
{
 struct msdosfsmount *pmp = VFSTOMSDOSFS(mp);
 struct defid *defhp = (struct defid *) fhp;
 struct denode *dep;
 int error;

 error = deget(pmp, defhp->defid_dirclust, defhp->defid_dirofs, &dep);
 if (error) {
  *vpp = NULLVP;
  return (error);
 }
 *vpp = DETOV(dep);
 vnode_create_vobject(*vpp, dep->de_FileSize, curthread);
 return (0);
}
