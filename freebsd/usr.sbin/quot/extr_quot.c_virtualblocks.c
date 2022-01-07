
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
struct fs {int fs_bsize; } ;
typedef int off_t ;


 int DIP (struct fs*,union dinode*,int ) ;
 int NINDIR (struct fs*) ;
 int UFS_NDADDR ;
 int blkroundup (struct fs*,int) ;
 int di_size ;
 int fragroundup (struct fs*,int) ;
 int lblkno (struct fs*,int) ;

__attribute__((used)) static int virtualblocks(struct fs *super, union dinode *dp)
{
 off_t nblk, sz;

 sz = DIP(super, dp, di_size);
 if (lblkno(super,sz) >= UFS_NDADDR) {
  nblk = blkroundup(super,sz);
  sz = lblkno(super,nblk);
  sz = (sz - UFS_NDADDR + NINDIR(super) - 1) / NINDIR(super);
  while (sz > 0) {
   nblk += sz * super->fs_bsize;

   sz = (sz - 1 + NINDIR(super) - 1) / NINDIR(super);
  }
 } else
  nblk = fragroundup(super,sz);

 return nblk / 512;

}
