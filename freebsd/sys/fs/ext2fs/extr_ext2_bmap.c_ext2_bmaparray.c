
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int v_bufobj; struct mount* v_mount; } ;
struct mount {int mnt_iosize_max; } ;
struct inode {size_t* i_db; size_t* i_ib; int i_flags; } ;
struct indir {size_t in_off; size_t in_lbn; } ;
struct ext2mount {size_t um_seqinc; int um_e2fs; } ;
struct buf {int b_flags; scalar_t__ b_data; void* b_blkno; int b_iooffset; int b_ioflags; int b_iocmd; } ;
typedef size_t e2fs_lbn_t ;
typedef size_t e2fs_daddr_t ;
typedef size_t daddr_t ;
struct TYPE_3__ {int ru_inblock; } ;
struct TYPE_4__ {TYPE_1__ td_ru; } ;


 int BIO_ERROR ;
 int BIO_READ ;
 int B_CACHE ;
 int B_INVAL ;
 int EXT2_BLOCK_SIZE (int ) ;
 size_t EXT2_NDADDR ;
 int EXT2_NIADDR ;
 size_t MNINDIR (struct ext2mount*) ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SF_SNAPSHOT ;
 struct ext2mount* VFSTOEXT2 (struct mount*) ;
 struct inode* VTOI (struct vnode*) ;
 void* blkptrtodb (struct ext2mount*,size_t) ;
 int bqrelse (struct buf*) ;
 int brelse (struct buf*) ;
 int bstrategy (struct buf*) ;
 int bufwait (struct buf*) ;
 int curproc ;
 TYPE_2__* curthread ;
 int dbtob (void*) ;
 int ext2_getlbns (struct vnode*,size_t,struct indir*,int*) ;
 struct buf* getblk (struct vnode*,size_t,int,int ,int ,int ) ;
 int incore (int *,size_t) ;
 scalar_t__ is_sequential (struct ext2mount*,size_t,size_t) ;
 int panic (char*) ;
 int racct_add_buf (int ,struct buf*,int ) ;
 scalar_t__ racct_enable ;
 int vfs_busy_pages (struct buf*,int ) ;

int
ext2_bmaparray(struct vnode *vp, daddr_t bn, daddr_t *bnp, int *runp, int *runb)
{
 struct inode *ip;
 struct buf *bp;
 struct ext2mount *ump;
 struct mount *mp;
 struct indir a[EXT2_NIADDR + 1], *ap;
 daddr_t daddr;
 e2fs_lbn_t metalbn;
 int error, num, maxrun = 0, bsize;
 int *nump;

 ap = ((void*)0);
 ip = VTOI(vp);
 mp = vp->v_mount;
 ump = VFSTOEXT2(mp);

 bsize = EXT2_BLOCK_SIZE(ump->um_e2fs);

 if (runp) {
  maxrun = mp->mnt_iosize_max / bsize - 1;
  *runp = 0;
 }
 if (runb)
  *runb = 0;


 ap = a;
 nump = &num;
 error = ext2_getlbns(vp, bn, ap, nump);
 if (error)
  return (error);

 num = *nump;
 if (num == 0) {
  *bnp = blkptrtodb(ump, ip->i_db[bn]);
  if (*bnp == 0) {
   *bnp = -1;
  } else if (runp) {
   daddr_t bnb = bn;

   for (++bn; bn < EXT2_NDADDR && *runp < maxrun &&
       is_sequential(ump, ip->i_db[bn - 1], ip->i_db[bn]);
       ++bn, ++*runp);
   bn = bnb;
   if (runb && (bn > 0)) {
    for (--bn; (bn >= 0) && (*runb < maxrun) &&
     is_sequential(ump, ip->i_db[bn],
      ip->i_db[bn + 1]);
      --bn, ++*runb);
   }
  }
  return (0);
 }


 daddr = ip->i_ib[ap->in_off];

 for (bp = ((void*)0), ++ap; --num; ++ap) {






  metalbn = ap->in_lbn;
  if ((daddr == 0 && !incore(&vp->v_bufobj, metalbn)) || metalbn == bn)
   break;




  if (bp)
   bqrelse(bp);

  bp = getblk(vp, metalbn, bsize, 0, 0, 0);
  if ((bp->b_flags & B_CACHE) == 0) {




   bp->b_blkno = blkptrtodb(ump, daddr);
   bp->b_iocmd = BIO_READ;
   bp->b_flags &= ~B_INVAL;
   bp->b_ioflags &= ~BIO_ERROR;
   vfs_busy_pages(bp, 0);
   bp->b_iooffset = dbtob(bp->b_blkno);
   bstrategy(bp);







   curthread->td_ru.ru_inblock++;
   error = bufwait(bp);
   if (error) {
    brelse(bp);
    return (error);
   }
  }

  daddr = ((e2fs_daddr_t *)bp->b_data)[ap->in_off];
  if (num == 1 && daddr && runp) {
   for (bn = ap->in_off + 1;
       bn < MNINDIR(ump) && *runp < maxrun &&
       is_sequential(ump,
       ((e2fs_daddr_t *)bp->b_data)[bn - 1],
       ((e2fs_daddr_t *)bp->b_data)[bn]);
       ++bn, ++*runp);
   bn = ap->in_off;
   if (runb && bn) {
    for (--bn; bn >= 0 && *runb < maxrun &&
     is_sequential(ump,
     ((e2fs_daddr_t *)bp->b_data)[bn],
     ((e2fs_daddr_t *)bp->b_data)[bn + 1]);
     --bn, ++*runb);
   }
  }
 }
 if (bp)
  bqrelse(bp);
 if ((ip->i_flags & SF_SNAPSHOT) && daddr > 0 && daddr < ump->um_seqinc) {
  *bnp = -1;
  return (0);
 }
 *bnp = blkptrtodb(ump, daddr);
 if (*bnp == 0) {
  *bnp = -1;
 }
 return (0);
}
