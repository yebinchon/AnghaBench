
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct stat {int st_mode; scalar_t__ st_flags; struct timespec st_mtim; struct timespec st_atim; int st_gid; int st_uid; } ;
typedef int mode_t ;


 int DEFFILEMODE ;
 scalar_t__ EPERM ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISGID ;
 int S_ISUID ;
 scalar_t__ errno ;
 scalar_t__ fchflags (int,scalar_t__) ;
 scalar_t__ fchmod (int,int) ;
 scalar_t__ fchown (int,int ,int ) ;
 scalar_t__ futimens (int,struct timespec*) ;
 int maybe_warn (char*,char const*) ;
 int umask (int) ;

__attribute__((used)) static void
copymodes(int fd, const struct stat *sbp, const char *file)
{
 struct timespec times[2];
 struct stat sb;





 if (sbp == ((void*)0)) {
  mode_t mask = umask(022);

  (void)fchmod(fd, DEFFILEMODE & ~mask);
  (void)umask(mask);
  return;
 }
 sb = *sbp;


 if (fchown(fd, sb.st_uid, sb.st_gid) < 0) {
  if (errno != EPERM)
   maybe_warn("couldn't fchown: %s", file);
  sb.st_mode &= ~(S_ISUID|S_ISGID);
 }


 sb.st_mode &= S_ISUID | S_ISGID | S_IRWXU | S_IRWXG | S_IRWXO;
 if (fchmod(fd, sb.st_mode) < 0)
  maybe_warn("couldn't fchmod: %s", file);

 times[0] = sb.st_atim;
 times[1] = sb.st_mtim;
 if (futimens(fd, times) < 0)
  maybe_warn("couldn't futimens: %s", file);


        if (sb.st_flags != 0 && fchflags(fd, sb.st_flags) < 0)
  maybe_warn("couldn't fchflags: %s", file);
}
