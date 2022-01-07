
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ off_t ;


 int DIOCGDELETE ;
 scalar_t__ EOPNOTSUPP ;
 int O_DIRECT ;
 int O_WRONLY ;
 int candelete (int) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ getsize (char const*) ;
 int ioctl (int,int ,scalar_t__*) ;
 int opendev (char const*,int) ;
 int printf (char*,...) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
trim(const char *path, off_t offset, off_t length, bool dryrun, bool verbose)
{
 off_t arg[2];
 int error, fd;

 if (length == 0)
  length = getsize(path);

 if (verbose)
  printf("trim %s offset %ju length %ju\n",
      path, (uintmax_t)offset, (uintmax_t)length);

 if (dryrun) {
  printf("dry run: add -f to actually perform the operation\n");
  return (0);
 }

 fd = opendev(path, O_WRONLY | O_DIRECT);
 arg[0] = offset;
 arg[1] = length;

 error = ioctl(fd, DIOCGDELETE, arg);
 if (error < 0) {
  if (errno == EOPNOTSUPP && verbose && !candelete(fd))
   warnx("%s: TRIM/UNMAP not supported by driver", path);
  else
   warn("ioctl(DIOCGDELETE) failed: %s", path);
 }
 close(fd);
 return (error);
}
