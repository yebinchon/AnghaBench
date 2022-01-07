
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int off_t ;
typedef int FILE ;


 int DIOCGMEDIASIZE ;
 scalar_t__ S_ISREG (int ) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int fileno (int *) ;
 int fstat (int,struct stat*) ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void
type_check(const char *path, FILE *fp)
{
 int error, fd;
 off_t mediasize;
 struct stat sb;

 fd = fileno(fp);

 error = fstat(fd, &sb);
 if (error != 0)
  err(1, "%s: fstat", path);

 if (S_ISREG(sb.st_mode))
  return;

 error = ioctl(fd, DIOCGMEDIASIZE, &mediasize);
 if (error != 0)
  errx(1, "%s: not a disk", path);
}
