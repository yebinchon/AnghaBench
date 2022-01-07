
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; int i_type; int i_name; } ;
typedef int ifr ;
struct TYPE_2__ {struct ifreq ireq; } ;


 int IEEE80211_IOC_CHANNEL ;
 unsigned int IFF_PPROMISC ;
 unsigned int IFF_UP ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 TYPE_1__ chaninfo ;
 int die (int,char*) ;
 int ioctl (int ,int ,struct ifreq*) ;
 int ioctl_s ;
 int memset (struct ifreq*,int ,int) ;
 int set_chan (int) ;
 int strcpy (int ,char*) ;

void setup_if(char *dev) {
        struct ifreq ifr;
        unsigned int flags;


        memset(&chaninfo.ireq, 0, sizeof(chaninfo.ireq));
        strcpy(chaninfo.ireq.i_name, dev);
        chaninfo.ireq.i_type = IEEE80211_IOC_CHANNEL;

        set_chan(1);


        memset(&ifr, 0, sizeof(ifr));
        strcpy(ifr.ifr_name, dev);
        if (ioctl(ioctl_s, SIOCGIFFLAGS, &ifr) == -1)
                die(1, "ioctl(SIOCGIFFLAGS)");

        flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
        flags |= IFF_UP | IFF_PPROMISC;

        memset(&ifr, 0, sizeof(ifr));
        strcpy(ifr.ifr_name, dev);
        ifr.ifr_flags = flags & 0xffff;
        ifr.ifr_flagshigh = flags >> 16;
        if (ioctl(ioctl_s, SIOCSIFFLAGS, &ifr) == -1)
                die(1, "ioctl(SIOCSIFFLAGS)");
}
