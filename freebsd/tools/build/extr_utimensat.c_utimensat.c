
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct stat {TYPE_2__ st_mtim; TYPE_1__ st_atim; } ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int ENOTSUP ;
 int UTIME_NOW ;
 int UTIME_OMIT ;
 int errno ;
 int fstatat (int,char const*,struct stat*,int) ;
 int futimesat (int,char const*,struct timeval*) ;
 int gettimeofday (struct timeval*,int *) ;
 int lutimes (char const*,struct timeval*) ;

int
utimensat(int fd, const char *path, const struct timespec times[2], int flag)
{
 struct timeval now, tv[2], *tvp;
 struct stat sb;
 int osreldate;

 if ((flag & ~AT_SYMLINK_NOFOLLOW) != 0) {
  errno = EINVAL;
  return (-1);
 }
 if (times == ((void*)0) || (times[0].tv_nsec == UTIME_NOW &&
     times[1].tv_nsec == UTIME_NOW))
  tvp = ((void*)0);
 else if (times[0].tv_nsec == UTIME_OMIT &&
     times[1].tv_nsec == UTIME_OMIT)
  return (0);
 else {
  if ((times[0].tv_nsec < 0 || times[0].tv_nsec > 999999999) &&
      times[0].tv_nsec != UTIME_NOW &&
      times[0].tv_nsec != UTIME_OMIT) {
   errno = EINVAL;
   return (-1);
  }
  if ((times[1].tv_nsec < 0 || times[1].tv_nsec > 999999999) &&
      times[1].tv_nsec != UTIME_NOW &&
      times[1].tv_nsec != UTIME_OMIT) {
   errno = EINVAL;
   return (-1);
  }
  tv[0].tv_sec = times[0].tv_sec;
  tv[0].tv_usec = times[0].tv_nsec / 1000;
  tv[1].tv_sec = times[1].tv_sec;
  tv[1].tv_usec = times[1].tv_nsec / 1000;
  tvp = tv;
  if (times[0].tv_nsec == UTIME_OMIT ||
      times[1].tv_nsec == UTIME_OMIT) {
   if (fstatat(fd, path, &sb, flag) == -1)
    return (-1);
   if (times[0].tv_nsec == UTIME_OMIT) {
    tv[0].tv_sec = sb.st_atim.tv_sec;
    tv[0].tv_usec = sb.st_atim.tv_nsec / 1000;
   }
   if (times[1].tv_nsec == UTIME_OMIT) {
    tv[1].tv_sec = sb.st_mtim.tv_sec;
    tv[1].tv_usec = sb.st_mtim.tv_nsec / 1000;
   }
  }
  if (times[0].tv_nsec == UTIME_NOW ||
      times[1].tv_nsec == UTIME_NOW) {
   if (gettimeofday(&now, ((void*)0)) == -1)
    return (-1);
   if (times[0].tv_nsec == UTIME_NOW)
    tv[0] = now;
   if (times[1].tv_nsec == UTIME_NOW)
    tv[1] = now;
  }
 }
 if ((flag & AT_SYMLINK_NOFOLLOW) == 0)
  return (futimesat(fd, path, tvp));
 else if ((flag & AT_SYMLINK_NOFOLLOW) != 0 &&
     (fd == AT_FDCWD || path[0] == '/'))
  return (lutimes(path, tvp));
 else {
  errno = ENOTSUP;
  return (-1);
 }
}
