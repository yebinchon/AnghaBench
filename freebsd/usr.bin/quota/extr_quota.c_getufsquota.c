
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotause {int dqblk; } ;
struct quotafile {int dummy; } ;
struct fstab {int dummy; } ;


 int O_RDONLY ;
 int quota_close (struct quotafile*) ;
 struct quotafile* quota_open (struct fstab*,int,int ) ;
 scalar_t__ quota_read (struct quotafile*,int *,long) ;

__attribute__((used)) static int
getufsquota(struct fstab *fs, struct quotause *qup, long id, int quotatype)
{
 struct quotafile *qf;

 if ((qf = quota_open(fs, quotatype, O_RDONLY)) == ((void*)0))
  return (0);
 if (quota_read(qf, &qup->dqblk, id) != 0)
  return (0);
 quota_close(qf);
 return (1);
}
