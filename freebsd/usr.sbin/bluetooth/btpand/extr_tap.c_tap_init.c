
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa_data; int sa_len; int sa_family; } ;
struct ifreq {char* ifr_name; int ifr_flags; TYPE_1__ ifr_addr; } ;
struct ether_addr {int dummy; } ;
typedef int pidfile ;
typedef int ifr ;
struct TYPE_6__ {int * pfh; int state; int laddr; int raddr; scalar_t__ mru; int recv; int send; } ;
typedef TYPE_2__ channel_t ;


 int AF_INET ;
 int AF_LINK ;
 int CHANNEL_OPEN ;
 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_MAX_LEN ;
 int EXIT_FAILURE ;
 int IFF_UP ;
 int O_RDWR ;
 int PATH_MAX ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SIOCSIFLLADDR ;
 int SOCK_DGRAM ;
 int TAPGIFNAME ;
 char* _PATH_VARRUN ;
 int b2eaddr (int ,int *) ;
 TYPE_2__* channel_alloc () ;
 int channel_open (TYPE_2__*,int) ;
 int close (int) ;
 int ether_ntoa (struct ether_addr*) ;
 int exit (int ) ;
 int interface_name ;
 int ioctl (int,int ,struct ifreq*) ;
 int local_bdaddr ;
 int log_err (char*,...) ;
 int log_info (char*,char*,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int open (int ,int ) ;
 int * pidfile_open (char*,int,int *) ;
 int pidfile_remove (int *) ;
 scalar_t__ pidfile_write (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int socket (int ,int ,int ) ;
 int tap_recv ;
 int tap_send ;

void
tap_init(void)
{
 channel_t *chan;
 struct ifreq ifr;
 int fd, s;
 char pidfile[PATH_MAX];

 fd = open(interface_name, O_RDWR);
 if (fd == -1) {
  log_err("Could not open \"%s\": %m", interface_name);
  exit(EXIT_FAILURE);
 }

 memset(&ifr, 0, sizeof(ifr));
 if (ioctl(fd, TAPGIFNAME, &ifr) == -1) {
  log_err("Could not get interface name: %m");
  exit(EXIT_FAILURE);
 }

 s = socket(AF_INET, SOCK_DGRAM, 0);
 if (s == -1) {
  log_err("Could not open PF_LINK socket: %m");
  exit(EXIT_FAILURE);
 }

 ifr.ifr_addr.sa_family = AF_LINK;
 ifr.ifr_addr.sa_len = ETHER_ADDR_LEN;
 b2eaddr(ifr.ifr_addr.sa_data, &local_bdaddr);

 if (ioctl(s, SIOCSIFLLADDR, &ifr) == -1) {
  log_err("Could not set %s physical address: %m", ifr.ifr_name);
  exit(EXIT_FAILURE);
 }

 if (ioctl(s, SIOCGIFFLAGS, &ifr) == -1) {
  log_err("Could not get interface flags: %m");
  exit(EXIT_FAILURE);
 }

 if ((ifr.ifr_flags & IFF_UP) == 0) {
  ifr.ifr_flags |= IFF_UP;

  if (ioctl(s, SIOCSIFFLAGS, &ifr) == -1) {
   log_err("Could not set IFF_UP: %m");
   exit(EXIT_FAILURE);
  }
 }

 close(s);

 log_info("Using interface %s with addr %s", ifr.ifr_name,
  ether_ntoa((struct ether_addr *)&ifr.ifr_addr.sa_data));

 chan = channel_alloc();
 if (chan == ((void*)0))
  exit(EXIT_FAILURE);

 chan->send = tap_send;
 chan->recv = tap_recv;
 chan->mru = ETHER_HDR_LEN + ETHER_MAX_LEN;
 memcpy(chan->raddr, ifr.ifr_addr.sa_data, ETHER_ADDR_LEN);
 memcpy(chan->laddr, ifr.ifr_addr.sa_data, ETHER_ADDR_LEN);
 chan->state = CHANNEL_OPEN;
 if (!channel_open(chan, fd))
  exit(EXIT_FAILURE);

 snprintf(pidfile, sizeof(pidfile), "%s/%s.pid",
  _PATH_VARRUN, ifr.ifr_name);
 chan->pfh = pidfile_open(pidfile, 0600, ((void*)0));
 if (chan->pfh == ((void*)0))
  log_err("can't create pidfile");
 else if (pidfile_write(chan->pfh) < 0) {
  log_err("can't write pidfile");
  pidfile_remove(chan->pfh);
  chan->pfh = ((void*)0);
 }
}
