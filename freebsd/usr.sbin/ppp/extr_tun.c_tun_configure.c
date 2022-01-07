
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tuninfo {int flags; int baudrate; int mtu; int type; } ;
struct ifreq {int ifr_mtu; int ifr_name; } ;
struct TYPE_4__ {int fd; } ;
struct bundle {int unit; TYPE_2__ dev; int bandwidth; TYPE_1__* iface; } ;
struct TYPE_3__ {int mtu; } ;


 scalar_t__ ID0ioctl (int ,int ,struct tuninfo*) ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_UP ;
 int IFT_PPP ;
 int LogERROR ;
 int PF_INET ;
 int SIOCSIFMTU ;
 int SOCK_DGRAM ;
 int TUNSIFINFO ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int log_Printf (int ,char*,int ) ;
 int memset (struct tuninfo*,char,int) ;
 int socket (int ,int ,int ) ;
 int sprintf (int ,char*,int) ;
 int strerror (int ) ;

void
tun_configure(struct bundle *bundle)
{
  struct tuninfo info;

  memset(&info, '\0', sizeof info);
  info.type = IFT_PPP;
  info.mtu = bundle->iface->mtu;

  info.baudrate = bundle->bandwidth;



  if (ID0ioctl(bundle->dev.fd, TUNSIFINFO, &info) < 0)
    log_Printf(LogERROR, "tun_configure: ioctl(TUNSIFINFO): %s\n",
       strerror(errno));

}
