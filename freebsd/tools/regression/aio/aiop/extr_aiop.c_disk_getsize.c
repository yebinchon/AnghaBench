
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t off_t ;


 int DIOCGMEDIASIZE ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,size_t*) ;

__attribute__((used)) static size_t
disk_getsize(int fd)
{
 off_t mediasize;

 if (ioctl(fd, DIOCGMEDIASIZE, &mediasize) < 0)
  err(1, "ioctl(DIOCGMEDIASIZE)");
 return (mediasize);
}
