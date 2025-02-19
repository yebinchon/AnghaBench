
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ufid {int ufid_ino; scalar_t__ ufid_gen; } ;
struct mount {int dummy; } ;
struct m_ext2fs {int e2fs_gcount; TYPE_1__* e2fs; } ;
struct inode {scalar_t__ i_mode; scalar_t__ i_gen; scalar_t__ i_nlink; } ;
struct fid {int dummy; } ;
struct TYPE_4__ {struct m_ext2fs* um_e2fs; } ;
struct TYPE_3__ {int e2fs_ipg; } ;


 int ESTALE ;
 int EXT2_ROOTINO ;
 int LK_EXCLUSIVE ;
 struct vnode* NULLVP ;
 TYPE_2__* VFSTOEXT2 (struct mount*) ;
 int VFS_VGET (struct mount*,int,int ,struct vnode**) ;
 struct inode* VTOI (struct vnode*) ;
 int curthread ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
ext2_fhtovp(struct mount *mp, struct fid *fhp, int flags, struct vnode **vpp)
{
 struct inode *ip;
 struct ufid *ufhp;
 struct vnode *nvp;
 struct m_ext2fs *fs;
 int error;

 ufhp = (struct ufid *)fhp;
 fs = VFSTOEXT2(mp)->um_e2fs;
 if (ufhp->ufid_ino < EXT2_ROOTINO ||
     ufhp->ufid_ino > fs->e2fs_gcount * fs->e2fs->e2fs_ipg)
  return (ESTALE);

 error = VFS_VGET(mp, ufhp->ufid_ino, LK_EXCLUSIVE, &nvp);
 if (error) {
  *vpp = NULLVP;
  return (error);
 }
 ip = VTOI(nvp);
 if (ip->i_mode == 0 ||
     ip->i_gen != ufhp->ufid_gen || ip->i_nlink <= 0) {
  vput(nvp);
  *vpp = NULLVP;
  return (ESTALE);
 }
 *vpp = nvp;
 vnode_create_vobject(*vpp, 0, curthread);
 return (0);
}
