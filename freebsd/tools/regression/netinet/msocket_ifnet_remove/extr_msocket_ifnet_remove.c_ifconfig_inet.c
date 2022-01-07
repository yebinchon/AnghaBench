
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; void* sin_family; } ;
struct ifaliasreq {int ifra_mask; int ifra_addr; int ifra_name; } ;
typedef int ifra ;


 void* AF_INET ;
 int PF_INET ;
 int SIOCAIFADDR ;
 int SOCK_RAW ;
 int bzero (struct ifaliasreq*,int) ;
 int close (int) ;
 void* inet_addr (char*) ;
 scalar_t__ ioctl (int,int ,struct ifaliasreq*) ;
 int snprintf (int ,int,char*,char*,int) ;
 int socket (int ,int ,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static int
ifconfig_inet(char *ifname, int ifunit, char *ip, char *netmask)
{
 struct sockaddr_in *sinp;
 struct ifaliasreq ifra;
 int s;

 s = socket(PF_INET, SOCK_RAW, 0);
 if (s < 0) {
  warn("ifconfig_inet: socket(PF_INET, SOCK_RAW, 0)");
  return (-1);
 }

 bzero(&ifra, sizeof(ifra));
 snprintf(ifra.ifra_name, sizeof(ifra.ifra_name), "%s%d", ifname,
     ifunit);

 sinp = (struct sockaddr_in *)&ifra.ifra_addr;
 sinp->sin_family = AF_INET;
 sinp->sin_len = sizeof(ifra.ifra_addr);
 sinp->sin_addr.s_addr = inet_addr(ip);

 sinp = (struct sockaddr_in *)&ifra.ifra_mask;
 sinp->sin_family = AF_INET;
 sinp->sin_len = sizeof(ifra.ifra_addr);
 sinp->sin_addr.s_addr = inet_addr(netmask);

 if (ioctl(s, SIOCAIFADDR, &ifra) < 0) {
  warn("ifconfig_inet: ioctl(%s%d, SIOCAIFADDR, %s)", ifname,
      ifunit, ip);
  close(s);
  return (-1);
 }

 close(s);
 return (0);
}
