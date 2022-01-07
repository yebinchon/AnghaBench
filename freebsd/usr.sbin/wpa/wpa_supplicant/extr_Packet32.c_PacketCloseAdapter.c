
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;
struct ieee80211req {int i_val; int i_type; int i_name; } ;
struct adapter {int socket; int name; int prev_roaming; } ;
typedef int ireq ;
typedef int ifr ;
typedef struct ieee80211req* caddr_t ;


 int IEEE80211_IOC_ROAMING ;
 int IFF_UP ;
 int SIOCGIFFLAGS ;
 int SIOCS80211 ;
 int SIOCSIFFLAGS ;
 int bzero (char*,int) ;
 int close (int ) ;
 int free (struct adapter*) ;
 int ioctl (int ,int ,struct ieee80211req*) ;
 int strncpy (int ,int ,int) ;

void
PacketCloseAdapter(void *iface)
{
 struct adapter *a;
 struct ifreq ifr;
 struct ieee80211req ireq;

 if (iface == ((void*)0))
  return;

 a = iface;


 bzero((char *)&ireq, sizeof(ireq));
 strncpy(ireq.i_name, a->name, sizeof (ifr.ifr_name));
 ireq.i_type = IEEE80211_IOC_ROAMING;
 ireq.i_val = a->prev_roaming;
 ioctl(a->socket, SIOCS80211, &ireq);

 bzero((char *)&ifr, sizeof(ifr));
        strncpy(ifr.ifr_name, a->name, sizeof (ifr.ifr_name));
        ioctl(a->socket, SIOCGIFFLAGS, (caddr_t)&ifr);
        ifr.ifr_flags &= ~IFF_UP;
        ioctl(a->socket, SIOCSIFFLAGS, (caddr_t)&ifr);
 close(a->socket);
 free(a);

 return;
}
