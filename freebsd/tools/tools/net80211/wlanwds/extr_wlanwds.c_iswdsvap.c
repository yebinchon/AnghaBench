
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_current; int ifm_name; } ;
typedef int ifmr ;
typedef int caddr_t ;


 int IFM_IEEE80211_WDS ;
 int SIOCGIFMEDIA ;
 int err (int,char*,char const*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memset (struct ifmediareq*,int ,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int
iswdsvap(int s, const char *ifname)
{
 struct ifmediareq ifmr;

 memset(&ifmr, 0, sizeof(ifmr));
 strncpy(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));
 if (ioctl(s, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0)
  err(-1, "%s: cannot get media", ifname);
 return (ifmr.ifm_current & IFM_IEEE80211_WDS) != 0;
}
