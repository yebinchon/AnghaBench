
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int CRONDIR ;
 scalar_t__ ENOENT ;
 int ERROR_EXIT ;
 scalar_t__ OK ;
 int SPOOL_DIR ;
 int S_IFDIR ;
 scalar_t__ chdir (int ) ;
 int err (int ,char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ mkdir (int ,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 int warn (char*,int ) ;
 int warnx (char*,int ) ;

void
set_cron_cwd()
{
 struct stat sb;



 if (stat(CRONDIR, &sb) < OK && errno == ENOENT) {
  warn("%s", CRONDIR);
  if (OK == mkdir(CRONDIR, 0700)) {
   warnx("%s: created", CRONDIR);
   stat(CRONDIR, &sb);
  } else {
   err(ERROR_EXIT, "%s: mkdir", CRONDIR);
  }
 }
 if (!(sb.st_mode & S_IFDIR))
  err(ERROR_EXIT, "'%s' is not a directory, bailing out", CRONDIR);
 if (chdir(CRONDIR) < OK)
  err(ERROR_EXIT, "cannot chdir(%s), bailing out", CRONDIR);



 if (stat(SPOOL_DIR, &sb) < OK && errno == ENOENT) {
  warn("%s", SPOOL_DIR);
  if (OK == mkdir(SPOOL_DIR, 0700)) {
   warnx("%s: created", SPOOL_DIR);
   stat(SPOOL_DIR, &sb);
  } else {
   err(ERROR_EXIT, "%s: mkdir", SPOOL_DIR);
  }
 }
 if (!(sb.st_mode & S_IFDIR))
  err(ERROR_EXIT, "'%s' is not a directory, bailing out", SPOOL_DIR);
}
