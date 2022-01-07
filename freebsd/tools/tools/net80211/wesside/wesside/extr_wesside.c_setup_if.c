
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; int i_type; int i_name; } ;
struct ifmediareq {int dummy; } ;
typedef int ifr ;
struct TYPE_2__ {int s; scalar_t__ chan; struct ifreq ireq; } ;


 int IEEE80211_IOC_CHANNEL ;
 unsigned int IFF_PPROMISC ;
 unsigned int IFF_UP ;
 scalar_t__ IFNAMSIZ ;
 int PF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SOCK_DGRAM ;
 TYPE_1__ chaninfo ;
 int exit (int) ;
 int fflush (int ) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int mymac ;
 int perror (char*) ;
 int printf (char*) ;
 int set_chan (int) ;
 int set_if_mac (int ,char*) ;
 int socket (int ,int ,int ) ;
 int stdout ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 int time_print (char*,...) ;

void setup_if(char *dev) {
 int s;
 struct ifreq ifr;
 unsigned int flags;
 struct ifmediareq ifmr;
 int *mwords;

 if(strlen(dev) >= IFNAMSIZ) {
  time_print("Interface name too long...\n");
  exit(1);
 }

 time_print("Setting up %s... ", dev);
 fflush(stdout);

 set_if_mac(mymac, dev);

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s == -1) {
  perror("socket()");
  exit(1);
 }


 memset(&chaninfo.ireq, 0, sizeof(chaninfo.ireq));
 strcpy(chaninfo.ireq.i_name, dev);
 chaninfo.ireq.i_type = IEEE80211_IOC_CHANNEL;

 chaninfo.chan = 0;
 chaninfo.s = s;
 set_chan(1);


 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, dev);
 if (ioctl(s, SIOCGIFFLAGS, &ifr) == -1) {
  perror("ioctl(SIOCGIFFLAGS)");
  exit(1);
 }

 flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
 flags |= IFF_UP | IFF_PPROMISC;

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, dev);
 ifr.ifr_flags = flags & 0xffff;
 ifr.ifr_flagshigh = flags >> 16;
 if (ioctl(s, SIOCSIFFLAGS, &ifr) == -1) {
  perror("ioctl(SIOCSIFFLAGS)");
  exit(1);
 }

 printf("done\n");
}
