
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_mnt {int part_len; int bsize; } ;
struct statfs {scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; int f_blocks; int f_iosize; int f_bsize; } ;
struct mount {int dummy; } ;


 struct udf_mnt* VFSTOUDFFS (struct mount*) ;

__attribute__((used)) static int
udf_statfs(struct mount *mp, struct statfs *sbp)
{
 struct udf_mnt *udfmp;

 udfmp = VFSTOUDFFS(mp);

 sbp->f_bsize = udfmp->bsize;
 sbp->f_iosize = udfmp->bsize;
 sbp->f_blocks = udfmp->part_len;
 sbp->f_bfree = 0;
 sbp->f_bavail = 0;
 sbp->f_files = 0;
 sbp->f_ffree = 0;
 return 0;
}
