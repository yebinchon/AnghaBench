
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CFIOCGFACTORYPR ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 int getfd (int ) ;
 scalar_t__ ioctl (int,int ,int *) ;

__attribute__((used)) static uint64_t
getfactorypr(void)
{
 uint64_t v;
 int fd = getfd(O_RDONLY);
 if (ioctl(fd, CFIOCGFACTORYPR, &v) < 0)
  err(-1, "ioctl(CFIOCGFACTORYPR)");
 close(fd);
 return v;
}
