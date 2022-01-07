
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CFIOCGPLR ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 int getfd (int ) ;
 scalar_t__ ioctl (int,int ,int *) ;

__attribute__((used)) static uint32_t
getplr(void)
{
 uint32_t plr;
 int fd = getfd(O_RDONLY);
 if (ioctl(fd, CFIOCGPLR, &plr) < 0)
  err(-1, "ioctl(CFIOCGPLR)");
 close(fd);
 return plr;
}
