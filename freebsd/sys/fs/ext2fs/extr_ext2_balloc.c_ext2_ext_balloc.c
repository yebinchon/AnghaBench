
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct buf {int b_blkno; } ;
typedef int daddr_t ;


 int BA_CLRBUF ;
 int EIO ;
 struct vnode* ITOV (struct inode*) ;
 int NOCRED ;
 int bread (struct vnode*,int ,int ,int ,struct buf**) ;
 int ext4_ext_get_blocks (struct inode*,int ,int,struct ucred*,int *,int*,int *) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 struct buf* getblk (struct vnode*,int ,int ,int ,int ,int ) ;
 int howmany (int,int ) ;
 int vfs_bio_clrbuf (struct buf*) ;

__attribute__((used)) static int
ext2_ext_balloc(struct inode *ip, uint32_t lbn, int size,
    struct ucred *cred, struct buf **bpp, int flags)
{
 struct m_ext2fs *fs;
 struct buf *bp = ((void*)0);
 struct vnode *vp = ITOV(ip);
 daddr_t newblk;
 int blks, error, allocated;

 fs = ip->i_e2fs;
 blks = howmany(size, fs->e2fs_bsize);

 error = ext4_ext_get_blocks(ip, lbn, blks, cred, ((void*)0), &allocated, &newblk);
 if (error)
  return (error);

 if (allocated) {
  bp = getblk(vp, lbn, fs->e2fs_bsize, 0, 0, 0);
  if(!bp)
   return (EIO);
 } else {
  error = bread(vp, lbn, fs->e2fs_bsize, NOCRED, &bp);
  if (error) {
   return (error);
  }
 }


 bp->b_blkno = fsbtodb(fs, newblk);
 if (flags & BA_CLRBUF)
  vfs_bio_clrbuf(bp);

 *bpp = bp;

 return (error);
}
