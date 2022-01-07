
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union dinode {char ffs1_din; char ffs2_din; } ;
typedef int uintmax_t ;
typedef int uint32_t ;
struct vnode {int * member_1; TYPE_1__* member_0; } ;
struct TYPE_8__ {int ffs2_din; int ffs1_din; } ;
struct inode {int i_number; int i_size; TYPE_3__ i_din; struct vnode* i_devvp; struct fs* i_fs; } ;
struct fs {int dummy; } ;
struct buf {int * b_data; } ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_6__ {scalar_t__ superblock; TYPE_2__* fs_specific; } ;
typedef TYPE_1__ fsinfo_t ;
struct TYPE_7__ {int version; int bsize; } ;
typedef TYPE_2__ ffs_opt_t ;


 int DEBUG_FS_WRITE_FILE ;
 int DEBUG_FS_WRITE_FILE_BLOCK ;
 int DIP (union dinode*,int ) ;
 int EXIT_FAILURE ;
 int MIN (int,int ) ;
 int O_RDONLY ;
 int S_IFMT ;
 int S_ISREG (int) ;
 int assert (int ) ;
 int brelse (struct buf*) ;
 scalar_t__ bwrite (struct buf*) ;
 int close (int) ;
 int debug ;
 char* emalloc (int ) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int ,char*,char*,long long,int,int ) ;
 scalar_t__ ffs_balloc (struct inode*,int,int,struct buf**) ;
 int ffs_write_inode (TYPE_3__*,int,TYPE_1__*) ;
 int free (char*) ;
 char* inode_type (int) ;
 int memcpy (int *,char*,int) ;
 int mode ;
 int open (char*,int ,int) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 int size ;

__attribute__((used)) static void
ffs_write_file(union dinode *din, uint32_t ino, void *buf, fsinfo_t *fsopts)
{
 int isfile, ffd;
 char *fbuf, *p;
 off_t bufleft, chunk, offset;
 ssize_t nread;
 struct inode in;
 struct buf * bp;
 ffs_opt_t *ffs_opts = fsopts->fs_specific;
 struct vnode vp = { fsopts, ((void*)0) };

 assert (din != ((void*)0));
 assert (buf != ((void*)0));
 assert (fsopts != ((void*)0));
 assert (ffs_opts != ((void*)0));

 isfile = S_ISREG(DIP(din, mode));
 fbuf = ((void*)0);
 ffd = -1;
 p = ((void*)0);

 in.i_fs = (struct fs *)fsopts->superblock;
 in.i_devvp = &vp;

 if (debug & DEBUG_FS_WRITE_FILE) {
  printf(
      "ffs_write_file: ino %u, din %p, isfile %d, %s, size %lld",
      ino, din, isfile, inode_type(DIP(din, mode) & S_IFMT),
      (long long)DIP(din, size));
  if (isfile)
   printf(", file '%s'\n", (char *)buf);
  else
   printf(", buffer %p\n", buf);
 }

 in.i_number = ino;
 in.i_size = DIP(din, size);
 if (ffs_opts->version == 1)
  memcpy(&in.i_din.ffs1_din, &din->ffs1_din,
      sizeof(in.i_din.ffs1_din));
 else
  memcpy(&in.i_din.ffs2_din, &din->ffs2_din,
      sizeof(in.i_din.ffs2_din));

 if (DIP(din, size) == 0)
  goto write_inode_and_leave;

 if (isfile) {
  fbuf = emalloc(ffs_opts->bsize);
  if ((ffd = open((char *)buf, O_RDONLY, 0444)) == -1) {
   err(EXIT_FAILURE, "Can't open `%s' for reading", (char *)buf);
  }
 } else {
  p = buf;
 }

 chunk = 0;
 for (bufleft = DIP(din, size); bufleft > 0; bufleft -= chunk) {
  chunk = MIN(bufleft, ffs_opts->bsize);
  if (!isfile)
   ;
  else if ((nread = read(ffd, fbuf, chunk)) == -1)
   err(EXIT_FAILURE, "Reading `%s', %lld bytes to go",
       (char *)buf, (long long)bufleft);
  else if (nread != chunk)
   errx(EXIT_FAILURE, "Reading `%s', %lld bytes to go, "
       "read %zd bytes, expected %ju bytes, does "
       "metalog size= attribute mismatch source size?",
       (char *)buf, (long long)bufleft, nread,
       (uintmax_t)chunk);
  else
   p = fbuf;
  offset = DIP(din, size) - bufleft;
  if (debug & DEBUG_FS_WRITE_FILE_BLOCK)
   printf(
  "ffs_write_file: write %p offset %lld size %lld left %lld\n",
       p, (long long)offset,
       (long long)chunk, (long long)bufleft);






  errno = ffs_balloc(&in, offset, chunk, &bp);
 bad_ffs_write_file:
  if (errno != 0)
   err(1,
       "Writing inode %d (%s), bytes %lld + %lld",
       ino,
       isfile ? (char *)buf :
         inode_type(DIP(din, mode) & S_IFMT),
       (long long)offset, (long long)chunk);
  memcpy(bp->b_data, p, chunk);
  errno = bwrite(bp);
  if (errno != 0)
   goto bad_ffs_write_file;
  brelse(bp);
  if (!isfile)
   p += chunk;
 }

 write_inode_and_leave:
 ffs_write_inode(&in.i_din, in.i_number, fsopts);
 if (fbuf)
  free(fbuf);
 if (ffd != -1)
  close(ffd);
}
