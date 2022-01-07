
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_status {int dummy; } ;


 int DIOCGETSTATUS ;
 int LOG_ERR ;
 int bzero (int *,int) ;
 int dev ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int *) ;
 scalar_t__ pf_tick ;
 int pfs ;
 scalar_t__ started ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;
 scalar_t__ this_tick ;

__attribute__((used)) static int
pfs_refresh(void)
{
 if (started && this_tick <= pf_tick)
  return (0);

 bzero(&pfs, sizeof(struct pf_status));

 if (ioctl(dev, DIOCGETSTATUS, &pfs)) {
  syslog(LOG_ERR, "pfs_refresh(): ioctl(): %s",
      strerror(errno));
  return (-1);
 }

 pf_tick = this_tick;
 return (0);
}
