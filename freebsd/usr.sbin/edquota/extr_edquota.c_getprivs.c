
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotause {struct quotause* next; int dqblk; int fsname; struct quotafile* qf; } ;
struct quotafile {int dummy; } ;
struct fstab {char* fs_spec; char* fs_file; char* fs_vfstype; } ;


 scalar_t__ EOPNOTSUPP ;
 int O_CREAT ;
 int O_RDWR ;
 scalar_t__ calloc (int,int) ;
 int endfsent () ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int freeprivs (struct quotause*) ;
 struct fstab* getfsent () ;
 struct quotafile* quota_open (struct fstab*,int,int) ;
 int quota_read (struct quotafile*,int *,long) ;
 int setfsent () ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

struct quotause *
getprivs(long id, int quotatype, char *fspath)
{
 struct quotafile *qf;
 struct fstab *fs;
 struct quotause *qup, *quptail;
 struct quotause *quphead;

 setfsent();
 quphead = quptail = ((void*)0);
 while ((fs = getfsent())) {
  if (fspath && *fspath && strcmp(fspath, fs->fs_spec) &&
      strcmp(fspath, fs->fs_file))
   continue;
  if (strcmp(fs->fs_vfstype, "ufs"))
   continue;
  if ((qf = quota_open(fs, quotatype, O_CREAT|O_RDWR)) == ((void*)0)) {
   if (errno != EOPNOTSUPP)
    warn("cannot open quotas on %s", fs->fs_file);
   continue;
  }
  if ((qup = (struct quotause *)calloc(1, sizeof(*qup))) == ((void*)0))
   errx(2, "out of memory");
  qup->qf = qf;
  strlcpy(qup->fsname, fs->fs_file, sizeof(qup->fsname));
  if (quota_read(qf, &qup->dqblk, id) == -1) {
   warn("cannot read quotas on %s", fs->fs_file);
   freeprivs(qup);
   continue;
  }
  if (quphead == ((void*)0))
   quphead = qup;
  else
   quptail->next = qup;
  quptail = qup;
  qup->next = 0;
 }
 if (quphead == ((void*)0)) {
  warnx("No quotas on %s", fspath ? fspath : "any filesystems");
 }
 endfsent();
 return (quphead);
}
