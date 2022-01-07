
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apm_info_t ;


 int APMIO_GETINFO ;
 int err (int,char*) ;
 int ioctl (int,int ,int ) ;

__attribute__((used)) static void
apm_getinfo(int fd, apm_info_t aip)
{
 if (ioctl(fd, APMIO_GETINFO, aip) == -1)
  err(1, "ioctl(APMIO_GETINFO)");
}
