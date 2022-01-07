
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CFIOCSOEMPR ;
 int O_WRONLY ;
 int close (int) ;
 int err (int,char*) ;
 int getfd (int ) ;
 scalar_t__ ioctl (int,int ,int *) ;

__attribute__((used)) static void
setoempr(uint64_t v)
{
 int fd = getfd(O_WRONLY);
 if (ioctl(fd, CFIOCSOEMPR, &v) < 0)
  err(-1, "ioctl(CFIOCGOEMPR)");
 close(fd);
}
