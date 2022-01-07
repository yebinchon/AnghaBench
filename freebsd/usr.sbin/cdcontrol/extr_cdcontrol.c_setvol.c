
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc_vol {int* vol; } ;


 int CDIOCSETVOL ;
 int fd ;
 int ioctl (int ,int ,struct ioc_vol*) ;

__attribute__((used)) static int
setvol(int left, int right)
{
 struct ioc_vol v;

 left = left < 0 ? 0 : left > 255 ? 255 : left;
 right = right < 0 ? 0 : right > 255 ? 255 : right;

 v.vol[0] = left;
 v.vol[1] = right;
 v.vol[2] = 0;
 v.vol[3] = 0;

 return ioctl (fd, CDIOCSETVOL, &v);
}
