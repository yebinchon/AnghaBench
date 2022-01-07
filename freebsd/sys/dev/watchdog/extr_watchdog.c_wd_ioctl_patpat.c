
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOSYS ;
 int WD_ACTIVE ;
 int WD_INTERVAL ;
 int WD_LASTVAL ;
 int WD_PASSIVE ;
 int wdog_kern_pat (int) ;

__attribute__((used)) static int
wd_ioctl_patpat(caddr_t data)
{
 u_int u;

 u = *(u_int *)data;
 if (u & ~(WD_ACTIVE | WD_PASSIVE | WD_LASTVAL | WD_INTERVAL))
  return (EINVAL);
 if ((u & (WD_ACTIVE | WD_PASSIVE)) == (WD_ACTIVE | WD_PASSIVE))
  return (EINVAL);
 if ((u & (WD_ACTIVE | WD_PASSIVE)) == 0 && ((u & WD_INTERVAL) > 0 ||
     (u & WD_LASTVAL) != 0))
  return (EINVAL);
 if (u & WD_PASSIVE)
  return (ENOSYS);
 u &= ~(WD_ACTIVE | WD_PASSIVE);

 return (wdog_kern_pat(u));
}
