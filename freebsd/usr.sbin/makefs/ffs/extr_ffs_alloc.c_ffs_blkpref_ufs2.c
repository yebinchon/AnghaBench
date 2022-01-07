
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct inode {int i_number; struct fs* i_fs; } ;
struct TYPE_4__ {int cs_nbfree; } ;
struct fs {int fs_maxbpg; int fs_fpg; int fs_frag; int fs_ncg; TYPE_2__ (* fs_cs ) (struct fs*,int) ;TYPE_1__ fs_cstotal; } ;
typedef scalar_t__ int64_t ;
typedef int daddr_t ;
struct TYPE_5__ {int cs_nbfree; } ;


 int NINDIR (struct fs*) ;
 int UFS_FSNEEDSWAP (struct fs*) ;
 int UFS_NDADDR ;
 int dtog (struct fs*,int) ;
 int ino_to_cg (struct fs*,int ) ;
 TYPE_2__ stub1 (struct fs*,int) ;
 TYPE_2__ stub2 (struct fs*,int) ;
 int ufs_rw64 (scalar_t__,int ) ;

daddr_t
ffs_blkpref_ufs2(struct inode *ip, daddr_t lbn, int indx, int64_t *bap)
{
 struct fs *fs;
 u_int cg, startcg;
 int avgbfree;

 fs = ip->i_fs;
 if (indx % fs->fs_maxbpg == 0 || bap[indx - 1] == 0) {
  if (lbn < UFS_NDADDR + NINDIR(fs)) {
   cg = ino_to_cg(fs, ip->i_number);
   return (fs->fs_fpg * cg + fs->fs_frag);
  }




  if (indx == 0 || bap[indx - 1] == 0)
   startcg =
       ino_to_cg(fs, ip->i_number) + lbn / fs->fs_maxbpg;
  else
   startcg = dtog(fs,
    ufs_rw64(bap[indx - 1], UFS_FSNEEDSWAP(fs)) + 1);
  startcg %= fs->fs_ncg;
  avgbfree = fs->fs_cstotal.cs_nbfree / fs->fs_ncg;
  for (cg = startcg; cg < fs->fs_ncg; cg++)
   if (fs->fs_cs(fs, cg).cs_nbfree >= avgbfree) {
    return (fs->fs_fpg * cg + fs->fs_frag);
   }
  for (cg = 0; cg < startcg; cg++)
   if (fs->fs_cs(fs, cg).cs_nbfree >= avgbfree) {
    return (fs->fs_fpg * cg + fs->fs_frag);
   }
  return (0);
 }



 return ufs_rw64(bap[indx - 1], UFS_FSNEEDSWAP(fs)) + fs->fs_frag;
}
