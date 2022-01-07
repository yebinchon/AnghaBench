
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int errno ;
 int sock ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

int
wlan_ioctl_init(void)
{
 if ((sock = socket(PF_INET, SOCK_DGRAM, 0)) < 0) {
  syslog(LOG_ERR, "cannot open socket : %s", strerror(errno));
  return (-1);
 }

 return (0);
}
