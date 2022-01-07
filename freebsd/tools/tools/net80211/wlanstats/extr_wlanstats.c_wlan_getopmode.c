
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifr_name; } ;
struct wlanstatfoo_p {int opmode; TYPE_1__ ifr; int s; } ;
struct wlanstatfoo {int dummy; } ;
struct ifmediareq {int ifm_current; int ifm_name; } ;
typedef int ifmr ;


 int IEEE80211_M_AHDEMO ;
 int IEEE80211_M_HOSTAP ;
 int IEEE80211_M_IBSS ;
 int IEEE80211_M_MONITOR ;
 int IEEE80211_M_STA ;
 int IFM_FLAG0 ;
 int IFM_IEEE80211_ADHOC ;
 int IFM_IEEE80211_HOSTAP ;
 int IFM_IEEE80211_MONITOR ;
 int SIOCGIFMEDIA ;
 int err (int,char*,int ) ;
 scalar_t__ ioctl (int ,int ,struct ifmediareq*) ;
 int memset (struct ifmediareq*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
wlan_getopmode(struct wlanstatfoo *wf0)
{
 struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) wf0;

 if (wf->opmode == -1) {
  struct ifmediareq ifmr;

  memset(&ifmr, 0, sizeof(ifmr));
  strlcpy(ifmr.ifm_name, wf->ifr.ifr_name, sizeof(ifmr.ifm_name));
  if (ioctl(wf->s, SIOCGIFMEDIA, &ifmr) < 0)
   err(1, "%s (SIOCGIFMEDIA)", wf->ifr.ifr_name);
  if (ifmr.ifm_current & IFM_IEEE80211_ADHOC) {
   if (ifmr.ifm_current & IFM_FLAG0)
    wf->opmode = IEEE80211_M_AHDEMO;
   else
    wf->opmode = IEEE80211_M_IBSS;
  } else if (ifmr.ifm_current & IFM_IEEE80211_HOSTAP)
   wf->opmode = IEEE80211_M_HOSTAP;
  else if (ifmr.ifm_current & IFM_IEEE80211_MONITOR)
   wf->opmode = IEEE80211_M_MONITOR;
  else
   wf->opmode = IEEE80211_M_STA;
 }
 return wf->opmode;
}
