
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
struct fs {scalar_t__ fs_magic; scalar_t__ fs_cgsize; scalar_t__ fs_fshift; size_t fs_ipg; } ;
struct cg {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef size_t ino_t ;
typedef struct cg* caddr_t ;


 scalar_t__ FS_UFS1_MAGIC ;
 scalar_t__ FS_UFS2_MAGIC ;
 size_t INOCNT (struct fs*) ;
 scalar_t__ INOSZ (struct fs*) ;
 int bzero (struct ufs2_dinode*,int) ;
 int cg_chkmagic (struct cg*) ;
 int cg_inosused (struct cg*) ;
 scalar_t__ cgtod (struct fs*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int free (struct cg*) ;
 int ino_to_cg (struct fs*,size_t) ;
 scalar_t__ ino_to_fsba (struct fs*,size_t) ;
 scalar_t__ isclr (int ,size_t) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 struct cg* malloc (scalar_t__) ;
 scalar_t__ read (int,struct cg*,scalar_t__) ;
 size_t rounddown (size_t,size_t) ;

__attribute__((used)) static union dinode *
get_inode(int fd, struct fs *super, ino_t ino)
{
 static caddr_t ipbuf;
 static struct cg *cgp;
 static ino_t last;
 static int cg;
 struct ufs2_dinode *di2;

 if (fd < 0) {
  if (ipbuf) {
   free(ipbuf);
   ipbuf = 0;
   if (super != ((void*)0) && super->fs_magic == FS_UFS2_MAGIC) {
    free(cgp);
    cgp = 0;
   }
  }
  return 0;
 }

 if (!ipbuf || ino < last || ino >= last + INOCNT(super)) {
  if (super->fs_magic == FS_UFS2_MAGIC &&
      (!cgp || cg != ino_to_cg(super, ino))) {
   cg = ino_to_cg(super, ino);
   if (!cgp && !(cgp = malloc(super->fs_cgsize)))
    errx(1, "allocate cg");
   if (lseek(fd, (off_t)cgtod(super, cg) << super->fs_fshift, 0) < 0)
    err(1, "lseek cg");
   if (read(fd, cgp, super->fs_cgsize) != super->fs_cgsize)
    err(1, "read cg");
   if (!cg_chkmagic(cgp))
    errx(1, "cg has bad magic");
  }
  if (!ipbuf
      && !(ipbuf = malloc(INOSZ(super))))
   errx(1, "allocate inodes");
  last = rounddown(ino, INOCNT(super));
  if (lseek(fd, (off_t)ino_to_fsba(super, last) << super->fs_fshift, 0) < (off_t)0
      || read(fd, ipbuf, INOSZ(super)) != (ssize_t)INOSZ(super))
   err(1, "read inodes");
 }

 if (super->fs_magic == FS_UFS1_MAGIC)
  return ((union dinode *)
      &((struct ufs1_dinode *)ipbuf)[ino % INOCNT(super)]);
 di2 = &((struct ufs2_dinode *)ipbuf)[ino % INOCNT(super)];

 if (isclr(cg_inosused(cgp), ino % super->fs_ipg))
  bzero(di2, sizeof (*di2));
 return ((union dinode *)di2);
}
