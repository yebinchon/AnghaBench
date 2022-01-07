
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
struct fsizes {int* fsz_sz; int fsz_last; int fsz_first; scalar_t__* fsz_count; struct fsizes* fsz_next; } ;
struct fs {int fs_ncg; int fs_ipg; } ;
typedef int intmax_t ;
typedef int ino_t ;
typedef int daddr_t ;


 int DIP (struct fs*,union dinode*,int ) ;
 int FSZCNT ;
 int IFDIR ;
 int IFMT ;
 int IFREG ;
 int SIZE (int) ;
 int actualblocks (struct fs*,union dinode*) ;
 int di_mode ;
 int err (int,char*,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 scalar_t__ estimate ;
 struct fsizes* fsizes ;
 union dinode* get_inode (int,struct fs*,int) ;
 int isfree (struct fs*,union dinode*) ;
 scalar_t__ malloc (int) ;
 int printf (char*,int ,int ,int) ;
 int rounddown (int,int) ;
 int virtualblocks (struct fs*,union dinode*) ;

__attribute__((used)) static void
dofsizes(int fd, struct fs *super, char *name)
{
 ino_t inode, maxino;
 union dinode *dp;
 daddr_t sz, ksz;
 struct fsizes *fp, **fsp;
 int i;

 maxino = super->fs_ncg * super->fs_ipg - 1;




 for (inode = 0; inode < maxino; inode++) {
  errno = 0;
  if ((dp = get_inode(fd,super,inode))




      && !isfree(super, dp)

      ) {
   sz = estimate ? virtualblocks(super, dp) :
       actualblocks(super, dp);
   ksz = SIZE(sz);
   for (fsp = &fsizes; (fp = *fsp); fsp = &fp->fsz_next) {
    if (ksz < fp->fsz_last)
     break;
   }
   if (!fp || ksz < fp->fsz_first) {
    if (!(fp = (struct fsizes *)
        malloc(sizeof(struct fsizes))))
     errx(1, "allocate fsize structure");
    fp->fsz_next = *fsp;
    *fsp = fp;
    fp->fsz_first = rounddown(ksz, FSZCNT);
    fp->fsz_last = fp->fsz_first + FSZCNT;
    for (i = FSZCNT; --i >= 0;) {
     fp->fsz_count[i] = 0;
     fp->fsz_sz[i] = 0;
    }
   }
   fp->fsz_count[ksz % FSZCNT]++;
   fp->fsz_sz[ksz % FSZCNT] += sz;

  } else if (errno) {
   err(1, "%s", name);
  }
 }
 sz = 0;
 for (fp = fsizes; fp; fp = fp->fsz_next) {
  for (i = 0; i < FSZCNT; i++) {
   if (fp->fsz_count[i])
    printf("%jd\t%jd\t%d\n",
        (intmax_t)(fp->fsz_first + i),
        (intmax_t)fp->fsz_count[i],
        SIZE(sz += fp->fsz_sz[i]));
  }
 }
}
