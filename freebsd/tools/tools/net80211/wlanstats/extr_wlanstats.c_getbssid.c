
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_len; int i_data; int i_type; } ;
struct wlanstatfoo_p {TYPE_1__ ireq; int s; int mac; } ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_BSSID ;
 int SIOCG80211 ;
 int ioctl (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
getbssid(struct wlanstatfoo_p *wf)
{
 wf->ireq.i_type = IEEE80211_IOC_BSSID;
 wf->ireq.i_data = wf->mac;
 wf->ireq.i_len = IEEE80211_ADDR_LEN;
 return ioctl(wf->s, SIOCG80211, &wf->ireq);
}
