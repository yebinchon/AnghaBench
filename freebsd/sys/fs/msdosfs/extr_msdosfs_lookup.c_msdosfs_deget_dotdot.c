
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct msdosfsmount {int dummy; } ;
struct mount {int dummy; } ;
struct denode {int dummy; } ;
struct deget_dotdot {int blkoff; int cluster; } ;


 struct vnode* DETOV (struct denode*) ;
 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;
 int deget (struct msdosfsmount*,int ,int ,struct denode**) ;

__attribute__((used)) static int
msdosfs_deget_dotdot(struct mount *mp, void *arg, int lkflags,
    struct vnode **rvp)
{
 struct deget_dotdot *dd_arg;
 struct denode *rdp;
 struct msdosfsmount *pmp;
 int error;

 pmp = VFSTOMSDOSFS(mp);
 dd_arg = arg;
 error = deget(pmp, dd_arg->cluster, dd_arg->blkoff, &rdp);
 if (error == 0)
  *rvp = DETOV(rdp);
 return (error);
}
