
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_vnode_data {scalar_t__ generation; } ;
struct fuse_fid {scalar_t__ gen; int nid; } ;
struct fid {int dummy; } ;
struct TYPE_2__ {int dataflags; } ;


 int EOPNOTSUPP ;
 int ESTALE ;
 int FSESS_EXPORT_SUPPORT ;
 int LK_EXCLUSIVE ;
 struct vnode* NULLVP ;
 int VFS_VGET (struct mount*,int ,int ,struct vnode**) ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 int curthread ;
 TYPE_1__* fuse_get_mpdata (struct mount*) ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
fuse_vfsop_fhtovp(struct mount *mp, struct fid *fhp, int flags,
 struct vnode **vpp)
{
 struct fuse_fid *ffhp = (struct fuse_fid *)fhp;
 struct fuse_vnode_data *fvdat;
 struct vnode *nvp;
 int error;

 if (!(fuse_get_mpdata(mp)->dataflags & FSESS_EXPORT_SUPPORT))
  return EOPNOTSUPP;

 error = VFS_VGET(mp, ffhp->nid, LK_EXCLUSIVE, &nvp);
 if (error) {
  *vpp = NULLVP;
  return (error);
 }
 fvdat = VTOFUD(nvp);
 if (fvdat->generation != ffhp->gen ) {
  vput(nvp);
  *vpp = NULLVP;
  return (ESTALE);
 }
 *vpp = nvp;
 vnode_create_vobject(*vpp, 0, curthread);
 return (0);
}
