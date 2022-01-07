
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ufs2_dinode {size_t di_size; int di_db; int di_rdev; int di_birthnsec; int di_ctimensec; int di_mtimensec; int di_atimensec; int di_birthtime; int di_ctime; int di_mtime; int di_atime; int di_gid; int di_uid; int di_gen; int di_flags; int di_nlink; int di_mode; } ;
struct stat {scalar_t__ st_ino; size_t st_size; int st_rdev; int st_ctimensec; int st_birthtimensec; int st_mtimensec; int st_atimensec; int st_ctime; int st_birthtime; int st_mtime; int st_atime; int st_gid; int st_uid; int st_flags; int st_mode; } ;
struct TYPE_10__ {void* symlink; int type; TYPE_1__* inode; } ;
typedef TYPE_2__ fsnode ;
struct TYPE_11__ {int needswap; } ;
typedef TYPE_3__ fsinfo_t ;
struct TYPE_12__ {size_t size; void* buf; } ;
typedef TYPE_4__ dirbuf_t ;
struct TYPE_9__ {struct stat st; int nlink; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 size_t UFS2_MAXSYMLINKLEN ;
 int memcpy (int ,void*,size_t) ;
 int memset (struct ufs2_dinode*,int ,int) ;
 int random () ;
 struct stat stampst ;
 size_t strlen (void*) ;
 int ufs_rw64 (int ,int ) ;

__attribute__((used)) static void *
ffs_build_dinode2(struct ufs2_dinode *dinp, dirbuf_t *dbufp, fsnode *cur,
   fsnode *root, fsinfo_t *fsopts)
{
 size_t slen;
 void *membuf;
 struct stat *st = stampst.st_ino != 0 ? &stampst : &cur->inode->st;

 memset(dinp, 0, sizeof(*dinp));
 dinp->di_mode = cur->inode->st.st_mode;
 dinp->di_nlink = cur->inode->nlink;
 dinp->di_size = cur->inode->st.st_size;



 dinp->di_gen = random();
 dinp->di_uid = cur->inode->st.st_uid;
 dinp->di_gid = cur->inode->st.st_gid;

 dinp->di_atime = st->st_atime;
 dinp->di_mtime = st->st_mtime;
 dinp->di_ctime = st->st_ctime;



 dinp->di_birthtime = st->st_ctime;
 membuf = ((void*)0);
 if (cur == root) {
  membuf = dbufp->buf;
  dinp->di_size = dbufp->size;
 } else if (S_ISBLK(cur->type) || S_ISCHR(cur->type)) {
  dinp->di_size = 0;
  dinp->di_rdev =
      ufs_rw64(cur->inode->st.st_rdev, fsopts->needswap);
 } else if (S_ISLNK(cur->type)) {
  slen = strlen(cur->symlink);
  if (slen < UFS2_MAXSYMLINKLEN) {
   memcpy(dinp->di_db, cur->symlink, slen);
  } else
   membuf = cur->symlink;
  dinp->di_size = slen;
 }
 return membuf;
}
