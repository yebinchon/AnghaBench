
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_blocks; int f_files; scalar_t__ f_ffree; scalar_t__ f_bavail; scalar_t__ f_bfree; void* f_iosize; void* f_bsize; } ;
struct mount {int mnt_flag; struct statfs mnt_stat; int * mnt_data; } ;


 int EOPNOTSUPP ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int MNT_UPDATE ;
 void* PAGE_SIZE ;
 int mqfs_data ;
 int vfs_getnewfsid (struct mount*) ;
 int vfs_mountedfrom (struct mount*,char*) ;

__attribute__((used)) static int
mqfs_mount(struct mount *mp)
{
 struct statfs *sbp;

 if (mp->mnt_flag & MNT_UPDATE)
  return (EOPNOTSUPP);

 mp->mnt_data = &mqfs_data;
 MNT_ILOCK(mp);
 mp->mnt_flag |= MNT_LOCAL;
 MNT_IUNLOCK(mp);
 vfs_getnewfsid(mp);

 sbp = &mp->mnt_stat;
 vfs_mountedfrom(mp, "mqueue");
 sbp->f_bsize = PAGE_SIZE;
 sbp->f_iosize = PAGE_SIZE;
 sbp->f_blocks = 1;
 sbp->f_bfree = 0;
 sbp->f_bavail = 0;
 sbp->f_files = 1;
 sbp->f_ffree = 0;
 return (0);
}
