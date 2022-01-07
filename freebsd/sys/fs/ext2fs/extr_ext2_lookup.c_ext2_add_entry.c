
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vnode {int dummy; } ;
struct inode {scalar_t__ i_offset; int i_count; scalar_t__ i_size; int i_flag; } ;
struct ext2fs_direct_2 {int e2d_reclen; scalar_t__ e2d_ino; int e2d_namlen; } ;
struct buf {scalar_t__ b_data; } ;
typedef int off_t ;
typedef int caddr_t ;


 scalar_t__ DOINGASYNC (struct vnode*) ;
 int EXT2_DIR_REC_LEN (int ) ;
 int IN_CHANGE ;
 int IN_UPDATE ;
 struct inode* VTOI (struct vnode*) ;
 int bcopy (int ,int ,int) ;
 int bdwrite (struct buf*) ;
 int bwrite (struct buf*) ;
 int ext2_blkatoff (struct vnode*,int ,char**,struct buf**) ;
 int ext2_dirent_csum_set (struct inode*,struct ext2fs_direct_2*) ;
 int panic (char*) ;

int
ext2_add_entry(struct vnode *dvp, struct ext2fs_direct_2 *entry)
{
 struct ext2fs_direct_2 *ep, *nep;
 struct inode *dp;
 struct buf *bp;
 u_int dsize;
 int error, loc, newentrysize, spacefree;
 char *dirbuf;

 dp = VTOI(dvp);
 if (dp->i_offset + dp->i_count > dp->i_size)
  dp->i_size = dp->i_offset + dp->i_count;



 if ((error = ext2_blkatoff(dvp, (off_t)dp->i_offset, &dirbuf,
     &bp)) != 0)
  return (error);







 newentrysize = EXT2_DIR_REC_LEN(entry->e2d_namlen);
 ep = (struct ext2fs_direct_2 *)dirbuf;
 dsize = EXT2_DIR_REC_LEN(ep->e2d_namlen);
 spacefree = ep->e2d_reclen - dsize;
 for (loc = ep->e2d_reclen; loc < dp->i_count; ) {
  nep = (struct ext2fs_direct_2 *)(dirbuf + loc);
  if (ep->e2d_ino) {

   ep->e2d_reclen = dsize;
   ep = (struct ext2fs_direct_2 *)((char *)ep + dsize);
  } else {

   spacefree += dsize;
  }
  dsize = EXT2_DIR_REC_LEN(nep->e2d_namlen);
  spacefree += nep->e2d_reclen - dsize;
  loc += nep->e2d_reclen;
  bcopy((caddr_t)nep, (caddr_t)ep, dsize);
 }




 if (ep->e2d_ino == 0) {
  if (spacefree + dsize < newentrysize)
   panic("ext2_direnter: compact1");
  entry->e2d_reclen = spacefree + dsize;
 } else {
  if (spacefree < newentrysize)
   panic("ext2_direnter: compact2");
  entry->e2d_reclen = spacefree;
  ep->e2d_reclen = dsize;
  ep = (struct ext2fs_direct_2 *)((char *)ep + dsize);
 }
 bcopy((caddr_t)entry, (caddr_t)ep, (u_int)newentrysize);
 ext2_dirent_csum_set(dp, (struct ext2fs_direct_2 *)bp->b_data);
 if (DOINGASYNC(dvp)) {
  bdwrite(bp);
  error = 0;
 } else {
  error = bwrite(bp);
 }
 dp->i_flag |= IN_CHANGE | IN_UPDATE;
 return (error);
}
