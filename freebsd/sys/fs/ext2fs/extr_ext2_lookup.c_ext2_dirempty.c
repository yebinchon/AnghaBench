
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_size; } ;
struct ext2fs_direct_2 {scalar_t__ e2d_reclen; scalar_t__ e2d_ino; int e2d_namlen; char* e2d_name; } ;
struct dirtemplate {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef scalar_t__ ino_t ;
typedef int caddr_t ;


 int IO_NODELOCKED ;
 int IO_NOMACCHECK ;
 int ITOV (struct inode*) ;
 int MINDIRSIZ ;
 int NOCRED ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int vn_rdwr (int ,int ,int ,int ,scalar_t__,int ,int,struct ucred*,int ,scalar_t__*,struct thread*) ;

int
ext2_dirempty(struct inode *ip, ino_t parentino, struct ucred *cred)
{
 off_t off;
 struct dirtemplate dbuf;
 struct ext2fs_direct_2 *dp = (struct ext2fs_direct_2 *)&dbuf;
 int error, namlen;
 ssize_t count;


 for (off = 0; off < ip->i_size; off += dp->e2d_reclen) {
  error = vn_rdwr(UIO_READ, ITOV(ip), (caddr_t)dp, (sizeof(struct dirtemplate) / 2),
      off, UIO_SYSSPACE, IO_NODELOCKED | IO_NOMACCHECK, cred,
      NOCRED, &count, (struct thread *)0);




  if (error || count != 0)
   return (0);

  if (dp->e2d_reclen == 0)
   return (0);

  if (dp->e2d_ino == 0)
   continue;

  namlen = dp->e2d_namlen;
  if (namlen > 2)
   return (0);
  if (dp->e2d_name[0] != '.')
   return (0);





  if (namlen == 1)
   continue;
  if (dp->e2d_name[1] == '.' && dp->e2d_ino == parentino)
   continue;
  return (0);
 }
 return (1);
}
