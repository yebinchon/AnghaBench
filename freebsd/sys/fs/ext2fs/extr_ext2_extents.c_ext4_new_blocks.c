
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int i_flag; int i_vnode; int i_ump; struct m_ext2fs* i_e2fs; } ;
typedef scalar_t__ e4fs_daddr_t ;
typedef int daddr_t ;


 int EXT2_LOCK (int ) ;
 int IN_CHANGE ;
 int IN_UPDATE ;
 int ext2_alloc (struct inode*,int ,scalar_t__,int,struct ucred*,scalar_t__*) ;
 int ext2_update (int ,int) ;

__attribute__((used)) static e4fs_daddr_t
ext4_new_blocks(struct inode *ip, daddr_t lbn, e4fs_daddr_t pref,
    struct ucred *cred, unsigned long *count, int *perror)
{
 struct m_ext2fs *fs;
 e4fs_daddr_t newblk;




 if (*count > 1)
  return (0);

 fs = ip->i_e2fs;
 EXT2_LOCK(ip->i_ump);
 *perror = ext2_alloc(ip, lbn, pref, (int)fs->e2fs_bsize, cred, &newblk);
 if (*perror)
  return (0);

 if (newblk) {
  ip->i_flag |= IN_CHANGE | IN_UPDATE;
  ext2_update(ip->i_vnode, 1);
 }

 return (newblk);
}
