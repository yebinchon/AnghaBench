
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vnlock; struct inode* v_data; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int i_flag; scalar_t__* i_db; int i_size; int i_mode; scalar_t__ i_next_alloc_goal; scalar_t__ i_next_alloc_block; int i_block_group; int i_number; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; struct vnode* i_vnode; } ;
struct ext2mount {int um_devvp; struct m_ext2fs* um_e2fs; } ;
struct ext2fs_dinode {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef int ino_t ;


 int EXT2_INODE_SIZE (struct m_ext2fs*) ;
 unsigned int EXT2_NDIR_BLOCKS ;
 int IN_E4EXTENTS ;
 int LK_EXCLUSIVE ;
 int M_EXT2NODE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NOCRED ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 struct ext2mount* VFSTOEXT2 (struct mount*) ;
 int bqrelse (struct buf*) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 struct thread* curthread ;
 int ext2_ei2i (struct ext2fs_dinode*,struct inode*) ;
 int ext2_fifoops ;
 int ext2_print_inode (struct inode*) ;
 int ext2_vinit (struct mount*,int *,struct vnode**) ;
 int ext2_vnodeops ;
 int ext4_ext_print_extent_tree_status (struct inode*) ;
 int free (struct inode*,int ) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int getnewvnode (char*,struct mount*,int *,struct vnode**) ;
 unsigned int howmany (int ,scalar_t__) ;
 int ino_to_cg (struct m_ext2fs*,int ) ;
 int ino_to_fsba (struct m_ext2fs*,int ) ;
 int ino_to_fsbo (struct m_ext2fs*,int ) ;
 int insmntque (struct vnode*,struct mount*) ;
 int lockmgr (int ,int ,int *) ;
 struct inode* malloc (int,int ,int) ;
 int vfs_hash_get (struct mount*,int ,int,struct thread*,struct vnode**,int *,int *) ;
 int vfs_hash_insert (struct vnode*,int ,int,struct thread*,struct vnode**,int *,int *) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
ext2_vget(struct mount *mp, ino_t ino, int flags, struct vnode **vpp)
{
 struct m_ext2fs *fs;
 struct inode *ip;
 struct ext2mount *ump;
 struct buf *bp;
 struct vnode *vp;
 struct thread *td;
 unsigned int i, used_blocks;
 int error;

 td = curthread;
 error = vfs_hash_get(mp, ino, flags, td, vpp, ((void*)0), ((void*)0));
 if (error || *vpp != ((void*)0))
  return (error);

 ump = VFSTOEXT2(mp);
 ip = malloc(sizeof(struct inode), M_EXT2NODE, M_WAITOK | M_ZERO);


 if ((error = getnewvnode("ext2fs", mp, &ext2_vnodeops, &vp)) != 0) {
  *vpp = ((void*)0);
  free(ip, M_EXT2NODE);
  return (error);
 }
 vp->v_data = ip;
 ip->i_vnode = vp;
 ip->i_e2fs = fs = ump->um_e2fs;
 ip->i_ump = ump;
 ip->i_number = ino;

 lockmgr(vp->v_vnlock, LK_EXCLUSIVE, ((void*)0));
 error = insmntque(vp, mp);
 if (error != 0) {
  free(ip, M_EXT2NODE);
  *vpp = ((void*)0);
  return (error);
 }
 error = vfs_hash_insert(vp, ino, flags, td, vpp, ((void*)0), ((void*)0));
 if (error || *vpp != ((void*)0))
  return (error);


 if ((error = bread(ump->um_devvp, fsbtodb(fs, ino_to_fsba(fs, ino)),
     (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {






  brelse(bp);
  vput(vp);
  *vpp = ((void*)0);
  return (error);
 }

 error = ext2_ei2i((struct ext2fs_dinode *)((char *)bp->b_data +
     EXT2_INODE_SIZE(fs) * ino_to_fsbo(fs, ino)), ip);
 if (error) {
  brelse(bp);
  vput(vp);
  *vpp = ((void*)0);
  return (error);
 }
 ip->i_block_group = ino_to_cg(fs, ino);
 ip->i_next_alloc_block = 0;
 ip->i_next_alloc_goal = 0;
 if (!(ip->i_flag & IN_E4EXTENTS) &&
     (S_ISDIR(ip->i_mode) || S_ISREG(ip->i_mode))) {
  used_blocks = howmany(ip->i_size, fs->e2fs_bsize);
  for (i = used_blocks; i < EXT2_NDIR_BLOCKS; i++)
   ip->i_db[i] = 0;
 }




 bqrelse(bp);





 if ((error = ext2_vinit(mp, &ext2_fifoops, &vp)) != 0) {
  vput(vp);
  *vpp = ((void*)0);
  return (error);
 }





 *vpp = vp;
 return (0);
}
