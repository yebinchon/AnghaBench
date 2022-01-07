
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
struct an_req {int dummy; } ;
typedef int ifr ;
typedef scalar_t__ caddr_t ;


 int AF_INET ;
 int SIOCGAIRONET ;
 int SOCK_DGRAM ;
 int bzero (struct ifreq*,int) ;
 int close (int) ;
 int err (int,char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
an_getval(const char *iface, struct an_req *areq)
{
 struct ifreq ifr;
 int s, okay = 1;

 bzero(&ifr, sizeof(ifr));

 strlcpy(ifr.ifr_name, iface, sizeof(ifr.ifr_name));
 ifr.ifr_data = (caddr_t)areq;

 s = socket(AF_INET, SOCK_DGRAM, 0);

 if (s == -1)
  err(1, "socket");

 if (ioctl(s, SIOCGAIRONET, &ifr) == -1) {
  okay = 0;
  err(1, "SIOCGAIRONET");
 }

 close(s);

 return (okay);
}
