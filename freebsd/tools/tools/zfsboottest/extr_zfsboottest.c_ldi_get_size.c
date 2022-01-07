
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {int st_size; int st_mode; } ;


 int DIOCGMEDIASIZE ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,int *) ;

uint64_t
ldi_get_size(void *priv)
{
 struct stat sb;
 int fd;

 fd = *(int *)priv;
 if (fstat(fd, &sb) != 0)
  return (0);
 if (S_ISCHR(sb.st_mode) && ioctl(fd, DIOCGMEDIASIZE, &sb.st_size) != 0)
  return (0);
 return (sb.st_size);
}
