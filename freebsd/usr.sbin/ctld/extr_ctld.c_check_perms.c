
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IROTH ;
 int S_IWOTH ;
 int S_IXOTH ;
 int log_warn (char*) ;
 int log_warnx (char*,char const*) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static void
check_perms(const char *path)
{
 struct stat sb;
 int error;

 error = stat(path, &sb);
 if (error != 0) {
  log_warn("stat");
  return;
 }
 if (sb.st_mode & S_IWOTH) {
  log_warnx("%s is world-writable", path);
 } else if (sb.st_mode & S_IROTH) {
  log_warnx("%s is world-readable", path);
 } else if (sb.st_mode & S_IXOTH) {




  log_warnx("%s is world-executable", path);
 }




}
