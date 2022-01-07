
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; scalar_t__ f_blocks; scalar_t__ f_iosize; int f_bsize; } ;
struct mount {int dummy; } ;


 int S_BLKSIZE ;

__attribute__((used)) static int
autofs_statfs(struct mount *mp, struct statfs *sbp)
{

 sbp->f_bsize = S_BLKSIZE;
 sbp->f_iosize = 0;
 sbp->f_blocks = 0;
 sbp->f_bfree = 0;
 sbp->f_bavail = 0;
 sbp->f_files = 0;
 sbp->f_ffree = 0;

 return (0);
}
