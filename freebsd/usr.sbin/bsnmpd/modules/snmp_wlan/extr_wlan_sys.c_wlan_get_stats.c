
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {int wname; int stats; } ;
struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
typedef scalar_t__ caddr_t ;


 int IFNAMSIZ ;
 int LOG_ERR ;
 int SIOCG80211STATS ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int sock ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ,int ) ;

int
wlan_get_stats(struct wlan_iface *wif)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(struct ifreq));
 strlcpy(ifr.ifr_name, wif->wname, IFNAMSIZ);

 ifr.ifr_data = (caddr_t) &wif->stats;

 if (ioctl(sock, SIOCG80211STATS, &ifr) < 0) {
  syslog(LOG_ERR, "iface %s - ioctl(SIOCG80211STATS) failed: %s",
      wif->wname, strerror(errno));
  return (-1);
 }

 return (0);
}
