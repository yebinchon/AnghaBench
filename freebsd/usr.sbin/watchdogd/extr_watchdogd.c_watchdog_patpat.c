
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int WDIOCPATPAT ;
 int fd ;
 int ioctl (int ,int ,int *) ;
 scalar_t__ is_dry_run ;

__attribute__((used)) static int
watchdog_patpat(u_int t)
{

 if (is_dry_run)
  return 0;

 return ioctl(fd, WDIOCPATPAT, &t);
}
