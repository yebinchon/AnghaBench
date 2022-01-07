
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct stat {int st_mtime; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int AT_SYMLINK_NOFOLLOW ;
 char* basename (char*) ;
 int closedir (int *) ;
 int dirfd (int *) ;
 char* dirname (char*) ;
 int free (char*) ;
 int fstatat (int,int ,struct stat*,int ) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 char* strdup (char const*) ;
 scalar_t__ validate_old_timelog (int,struct dirent*,char*,struct tm*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static time_t
mtime_old_timelog(const char *file)
{
 struct stat sb;
 struct tm tm;
 int dir_fd;
 time_t t;
 struct dirent *dp;
 DIR *dirp;
 char *logfname, *logfnamebuf, *dir, *dirbuf;

 t = -1;

 if ((dirbuf = strdup(file)) == ((void*)0)) {
  warn("strdup() of '%s'", file);
  return (t);
 }
 dir = dirname(dirbuf);
 if ((logfnamebuf = strdup(file)) == ((void*)0)) {
  warn("strdup() of '%s'", file);
  free(dirbuf);
  return (t);
 }
 logfname = basename(logfnamebuf);
 if (logfname[0] == '/') {
  warnx("Invalid log filename '%s'", logfname);
  goto out;
 }

 if ((dirp = opendir(dir)) == ((void*)0)) {
  warn("Cannot open log directory '%s'", dir);
  goto out;
 }
 dir_fd = dirfd(dirp);

 while ((dp = readdir(dirp)) != ((void*)0)) {
  if (validate_old_timelog(dir_fd, dp, logfname, &tm) == 0)
   continue;

  if (fstatat(dir_fd, dp->d_name, &sb, AT_SYMLINK_NOFOLLOW) == -1) {
   warn("Cannot stat '%s'", file);
   continue;
  }
  if (t < sb.st_mtime)
   t = sb.st_mtime;
 }
 closedir(dirp);

out:
 free(dirbuf);
 free(logfnamebuf);
 return (t);
}
