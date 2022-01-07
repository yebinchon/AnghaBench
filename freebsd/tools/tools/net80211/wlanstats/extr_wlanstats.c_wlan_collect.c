
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int i_len; int ifr_name; void* ifr_data; int i_name; void* i_data; int i_type; } ;
struct TYPE_6__ {int macaddr; } ;
struct TYPE_7__ {TYPE_1__ is_u; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct wlanstatfoo_p {TYPE_5__ ifr; int s; scalar_t__ mac; TYPE_5__ ireq; TYPE_3__ u_info; } ;
struct TYPE_9__ {int macaddr; } ;
struct ieee80211req_sta_stats {TYPE_4__ is_u; } ;
struct ieee80211_stats {int dummy; } ;
struct ether_addr {int dummy; } ;
typedef void* caddr_t ;


 int IEEE80211_ADDR_COPY (int ,scalar_t__) ;
 int IEEE80211_IOC_STA_INFO ;
 int IEEE80211_IOC_STA_STATS ;
 int SIOCG80211 ;
 int SIOCG80211STATS ;
 int err (int,char*,int ) ;
 int ether_ntoa (struct ether_addr const*) ;
 scalar_t__ ioctl (int ,int ,TYPE_5__*) ;
 int warn (char*,int ,int ) ;

__attribute__((used)) static void
wlan_collect(struct wlanstatfoo_p *wf,
 struct ieee80211_stats *stats, struct ieee80211req_sta_stats *nstats)
{

 IEEE80211_ADDR_COPY(wf->u_info.info.is_u.macaddr, wf->mac);
 wf->ireq.i_type = IEEE80211_IOC_STA_INFO;
 wf->ireq.i_data = (caddr_t) &wf->u_info;
 wf->ireq.i_len = sizeof(wf->u_info);
 if (ioctl(wf->s, SIOCG80211, &wf->ireq) < 0) {
  warn("%s:%s (IEEE80211_IOC_STA_INFO)", wf->ireq.i_name,
      ether_ntoa((const struct ether_addr*) wf->mac));
 }

 IEEE80211_ADDR_COPY(nstats->is_u.macaddr, wf->mac);
 wf->ireq.i_type = IEEE80211_IOC_STA_STATS;
 wf->ireq.i_data = (caddr_t) nstats;
 wf->ireq.i_len = sizeof(*nstats);
 if (ioctl(wf->s, SIOCG80211, &wf->ireq) < 0)
  warn("%s:%s (IEEE80211_IOC_STA_STATS)", wf->ireq.i_name,
      ether_ntoa((const struct ether_addr*) wf->mac));

 wf->ifr.ifr_data = (caddr_t) stats;
 if (ioctl(wf->s, SIOCG80211STATS, &wf->ifr) < 0)
  err(1, "%s (SIOCG80211STATS)", wf->ifr.ifr_name);
}
