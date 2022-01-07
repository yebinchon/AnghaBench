
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int i_val; int ifr_flags; int ifr_flagshigh; int ifr_name; int i_type; int i_name; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211req {int i_val; int ifr_flags; int ifr_flagshigh; int ifr_name; int i_type; int i_name; } ;
typedef int ireq ;
typedef int ifr ;


 int IEEE80211_IOC_CHANNEL ;
 unsigned int IFF_PPROMISC ;
 unsigned int IFF_UP ;
 int PF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCS80211 ;
 int SIOCSIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int,char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int snprintf (int ,int,char*,char*) ;
 int socket (int ,int ,int ) ;

void setup_if(char *dev, int chan) {
 int s;
 struct ifreq ifr;
 unsigned int flags;
 struct ifmediareq ifmr;
 int *mwords;
 struct ieee80211req ireq;

 if ((s = socket(PF_INET, SOCK_DGRAM, 0)) == -1)
  err(1, "socket()");


 memset(&ireq, 0, sizeof(ireq));
 snprintf(ireq.i_name, sizeof(ireq.i_name), "%s", dev);
 ireq.i_type = IEEE80211_IOC_CHANNEL;
 ireq.i_val = chan;
 if (ioctl(s, SIOCS80211, &ireq) == -1)
  err(1, "ioctl(SIOCS80211)");


 memset(&ifr, 0, sizeof(ifr));
 snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s", dev);
 if (ioctl(s, SIOCGIFFLAGS, &ifr) == -1)
  err(1, "ioctl(SIOCGIFFLAGS)");
 flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
 flags |= IFF_UP | IFF_PPROMISC;
 ifr.ifr_flags = flags & 0xffff;
 ifr.ifr_flagshigh = flags >> 16;
 if (ioctl(s, SIOCSIFFLAGS, &ifr) == -1)
  err(1, "ioctl(SIOCSIFFLAGS)");

 close(s);
}
