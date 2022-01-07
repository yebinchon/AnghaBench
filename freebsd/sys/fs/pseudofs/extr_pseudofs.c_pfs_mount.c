
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_blocks; int f_files; scalar_t__ f_ffree; scalar_t__ f_bavail; scalar_t__ f_bfree; void* f_iosize; void* f_bsize; } ;
struct pfs_info {int pi_name; } ;
struct mount {int mnt_flag; struct statfs mnt_stat; struct pfs_info* mnt_data; int mnt_kern_flag; } ;


 int EOPNOTSUPP ;
 int MNTK_NOMSYNC ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int MNT_UPDATE ;
 void* PAGE_SIZE ;
 int vfs_getnewfsid (struct mount*) ;
 int vfs_mountedfrom (struct mount*,int ) ;

int
pfs_mount(struct pfs_info *pi, struct mount *mp)
{
 struct statfs *sbp;

 if (mp->mnt_flag & MNT_UPDATE)
  return (EOPNOTSUPP);

 MNT_ILOCK(mp);
 mp->mnt_flag |= MNT_LOCAL;
 mp->mnt_kern_flag |= MNTK_NOMSYNC;
 MNT_IUNLOCK(mp);
 mp->mnt_data = pi;
 vfs_getnewfsid(mp);

 sbp = &mp->mnt_stat;
 vfs_mountedfrom(mp, pi->pi_name);
 sbp->f_bsize = PAGE_SIZE;
 sbp->f_iosize = PAGE_SIZE;
 sbp->f_blocks = 1;
 sbp->f_bfree = 0;
 sbp->f_bavail = 0;
 sbp->f_files = 1;
 sbp->f_ffree = 0;

 return (0);
}
