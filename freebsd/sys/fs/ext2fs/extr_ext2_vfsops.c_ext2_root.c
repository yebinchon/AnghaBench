
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int EXT2_ROOTINO ;
 int LK_EXCLUSIVE ;
 int VFS_VGET (struct mount*,int ,int ,struct vnode**) ;

__attribute__((used)) static int
ext2_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct vnode *nvp;
 int error;

 error = VFS_VGET(mp, EXT2_ROOTINO, LK_EXCLUSIVE, &nvp);
 if (error)
  return (error);
 *vpp = nvp;
 return (0);
}
