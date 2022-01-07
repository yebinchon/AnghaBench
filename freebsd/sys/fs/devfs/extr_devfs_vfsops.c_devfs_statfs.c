
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_blocks; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; void* f_iosize; void* f_bsize; scalar_t__ f_flags; } ;
struct mount {int dummy; } ;


 void* DEV_BSIZE ;

__attribute__((used)) static int
devfs_statfs(struct mount *mp, struct statfs *sbp)
{

 sbp->f_flags = 0;
 sbp->f_bsize = DEV_BSIZE;
 sbp->f_iosize = DEV_BSIZE;
 sbp->f_blocks = 2;
 sbp->f_bfree = 0;
 sbp->f_bavail = 0;
 sbp->f_files = 0;
 sbp->f_ffree = 0;
 return (0);
}
