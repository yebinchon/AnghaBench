
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_len; int sa_data; int sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int ifr_name; } ;
typedef int ifr ;


 int AF_LINK ;
 int PF_INET ;
 int SIOCSIFLLADDR ;
 int SOCK_DGRAM ;
 int close (int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memcpy (int ,char*,int) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strcpy (int ,char*) ;

int set_iface_mac(char *iface, char *mac)
{
 int s, rc;
 struct ifreq ifr;

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s == -1)
  return -1;

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, iface);

 ifr.ifr_addr.sa_family = AF_LINK;
 ifr.ifr_addr.sa_len = 6;
 memcpy(ifr.ifr_addr.sa_data, mac, 6);

 rc = ioctl(s, SIOCSIFLLADDR, &ifr);

 close(s);

 return rc;
}
