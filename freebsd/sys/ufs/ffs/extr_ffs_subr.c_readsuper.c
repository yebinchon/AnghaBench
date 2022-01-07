
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fs {scalar_t__ fs_magic; scalar_t__ fs_sblockloc; int fs_ncg; scalar_t__ fs_bsize; scalar_t__ fs_sbsize; int fs_flags; int fs_ckhash; int fs_fmod; int * fs_csp; scalar_t__ fs_sblockactualloc; scalar_t__ fs_metackhash; } ;
typedef scalar_t__ off_t ;


 int DEV_BSIZE ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ FS_BAD_MAGIC ;
 int FS_METACKHASH ;
 int FS_NEEDSFSCK ;
 scalar_t__ FS_UFS1_MAGIC ;
 scalar_t__ FS_UFS2_MAGIC ;
 scalar_t__ MAXBSIZE ;
 scalar_t__ MINBSIZE ;
 scalar_t__ SBLOCKSIZE ;
 scalar_t__ SBLOCK_UFS1 ;
 int ffs_calc_sbhash (struct fs*) ;
 int printf (char*,int,int,char*) ;
 scalar_t__ roundup (int,int ) ;
 int stub1 (void*,scalar_t__,void**,int) ;
 int uprintf (char*,int,int,char*) ;

__attribute__((used)) static int
readsuper(void *devfd, struct fs **fsp, off_t sblockloc, int isaltsblk,
    int chkhash, int (*readfunc)(void *devfd, off_t loc, void **bufp, int size))
{
 struct fs *fs;
 int error, res;
 uint32_t ckhash;

 error = (*readfunc)(devfd, sblockloc, (void **)fsp, SBLOCKSIZE);
 if (error != 0)
  return (error);
 fs = *fsp;
 if (fs->fs_magic == FS_BAD_MAGIC)
  return (EINVAL);
 if (((fs->fs_magic == FS_UFS1_MAGIC && (isaltsblk ||
       sblockloc <= SBLOCK_UFS1)) ||
      (fs->fs_magic == FS_UFS2_MAGIC && (isaltsblk ||
       sblockloc == fs->fs_sblockloc))) &&
     fs->fs_ncg >= 1 &&
     fs->fs_bsize >= MINBSIZE &&
     fs->fs_bsize <= MAXBSIZE &&
     fs->fs_bsize >= roundup(sizeof(struct fs), DEV_BSIZE) &&
     fs->fs_sbsize <= SBLOCKSIZE) {




  if ((fs->fs_flags & FS_METACKHASH) == 0)
   fs->fs_metackhash = 0;
  if (fs->fs_ckhash != (ckhash = ffs_calc_sbhash(fs))) {






   res = 0;





   if (res == 0)
    printf("Superblock check-hash failed: recorded "
        "check-hash 0x%x != computed check-hash "
        "0x%x%s\n", fs->fs_ckhash, ckhash,
        chkhash == 0 ? " (Ignored)" : "");
   if (chkhash == 0) {
    fs->fs_flags |= FS_NEEDSFSCK;
    fs->fs_fmod = 1;
    return (0);
   }
   fs->fs_fmod = 0;
   return (EINVAL);
  }

  fs->fs_sblockactualloc = sblockloc;

  fs->fs_csp = ((void*)0);
  return (0);
 }
 return (ENOENT);
}
