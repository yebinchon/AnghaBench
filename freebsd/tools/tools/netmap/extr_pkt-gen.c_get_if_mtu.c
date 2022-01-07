
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {char* ifr_name; int ifr_mtu; } ;
struct glob_arg {char* ifname; } ;
typedef int ifreq ;


 int AF_INET ;
 int D (char*,int ) ;
 int IFNAMSIZ ;
 int SIOCGIFMTU ;
 int SOCK_DGRAM ;
 int errno ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strchr (char*,char) ;
 size_t strcspn (char*,char*) ;
 int strerror (int ) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int
get_if_mtu(const struct glob_arg *g)
{
 char ifname[IFNAMSIZ];
 struct ifreq ifreq;
 int s, ret;

 if (!strncmp(g->ifname, "netmap:", 7) && !strchr(g->ifname, '{')
   && !strchr(g->ifname, '}')) {


  strncpy(ifname, g->ifname+7, IFNAMSIZ-1);
  ifname[strcspn(ifname, "-*^{}/@")] = '\0';

  s = socket(AF_INET, SOCK_DGRAM, 0);
  if (s < 0) {
   D("socket() failed: %s", strerror(errno));
   return s;
  }

  memset(&ifreq, 0, sizeof(ifreq));
  strncpy(ifreq.ifr_name, ifname, IFNAMSIZ);

  ret = ioctl(s, SIOCGIFMTU, &ifreq);
  if (ret) {
   D("ioctl(SIOCGIFMTU) failed: %s", strerror(errno));
  }

  return ifreq.ifr_mtu;
 }



 return 65536;
}
