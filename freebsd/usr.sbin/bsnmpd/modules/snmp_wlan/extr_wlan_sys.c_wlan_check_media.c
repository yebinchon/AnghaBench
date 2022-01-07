
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {scalar_t__ ifm_count; int ifm_status; int ifm_active; int ifm_name; } ;


 int IFM_AVALID ;
 int IFM_TYPE (int ) ;
 int SIOCGIFMEDIA ;
 scalar_t__ ioctl (int ,int ,struct ifmediareq*) ;
 int memset (struct ifmediareq*,int ,int) ;
 int sock ;
 int strlcpy (int ,char*,int) ;

int
wlan_check_media(char *ifname)
{
 struct ifmediareq ifmr;

 memset(&ifmr, 0, sizeof(struct ifmediareq));
 strlcpy(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));

 if (ioctl(sock, SIOCGIFMEDIA, &ifmr) < 0 || ifmr.ifm_count == 0)
  return (0);

 if ((ifmr.ifm_status & IFM_AVALID) == 0)
  return (0);

 return (IFM_TYPE(ifmr.ifm_active));
}
