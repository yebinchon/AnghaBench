
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_size; } ;
typedef int off_t ;


 int DIOCGMEDIASIZE ;
 int EX_DATAERR ;
 int EX_IOERR ;
 int EX_UNAVAILABLE ;
 int O_DIRECT ;
 int O_RDONLY ;
 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int close (int) ;
 int err (int ,char*,char const*) ;
 int errx (int ,char*,char const*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,int *) ;
 int opendev (char const*,int) ;

__attribute__((used)) static off_t
getsize(const char *path)
{
 struct stat sb;
 off_t mediasize;
 int fd;

 fd = opendev(path, O_RDONLY | O_DIRECT);

 if (fstat(fd, &sb) < 0)
  err(EX_IOERR, "fstat failed: %s", path);

 if (S_ISREG(sb.st_mode) || S_ISDIR(sb.st_mode)) {
  close(fd);
  return (sb.st_size);
 }

 if (!S_ISCHR(sb.st_mode) && !S_ISBLK(sb.st_mode))
  errx(EX_DATAERR,
   "invalid type of the file "
   "(not regular, directory nor special device): %s",
   path);

 if (ioctl(fd, DIOCGMEDIASIZE, &mediasize) < 0)
  err(EX_UNAVAILABLE,
   "ioctl(DIOCGMEDIASIZE) failed, probably not a disk: "
   "%s", path);

 close(fd);
 return (mediasize);
}
