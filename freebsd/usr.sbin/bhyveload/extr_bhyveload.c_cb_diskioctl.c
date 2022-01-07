
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct stat {int st_size; int st_mode; } ;
typedef int off_t ;




 int EBADF ;
 int ENOTTY ;
 int S_ISCHR (int ) ;
 int * disk_fd ;
 int fstat (int ,struct stat*) ;
 int ioctl (int ,int const,int *) ;
 int ndisks ;

__attribute__((used)) static int
cb_diskioctl(void *arg, int unit, u_long cmd, void *data)
{
 struct stat sb;

 if (unit < 0 || unit >= ndisks)
  return (EBADF);

 switch (cmd) {
 case 128:
  *(u_int *)data = 512;
  break;
 case 129:
  if (fstat(disk_fd[unit], &sb) != 0)
   return (ENOTTY);
  if (S_ISCHR(sb.st_mode) &&
      ioctl(disk_fd[unit], 129, &sb.st_size) != 0)
    return (ENOTTY);
  *(off_t *)data = sb.st_size;
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
