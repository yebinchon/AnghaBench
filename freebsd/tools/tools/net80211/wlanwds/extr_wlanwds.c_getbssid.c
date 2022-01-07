
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211req {int i_len; int * i_data; int i_type; int i_name; } ;
typedef int ireq ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_BSSID ;
 int SIOCG80211 ;
 int err (int,char*,char const*) ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
getbssid(int s, const char *ifname, uint8_t bssid[IEEE80211_ADDR_LEN])
{
 struct ieee80211req ireq;

 memset(&ireq, 0, sizeof(ireq));
 strncpy(ireq.i_name, ifname, sizeof(ireq.i_name));
 ireq.i_type = IEEE80211_IOC_BSSID;
 ireq.i_data = bssid;
 ireq.i_len = IEEE80211_ADDR_LEN;
 if (ioctl(s, SIOCG80211, &ireq) < 0)
  err(-1, "%s: cannot fetch bssid", ifname);
}
