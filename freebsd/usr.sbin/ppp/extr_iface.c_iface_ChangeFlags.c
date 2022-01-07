
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {char* ifr_name; int ifr_flags; int ifr_flagshigh; } ;


 scalar_t__ ID0ioctl (int,int ,struct ifreq*) ;
 int ID0socket (int ,int ,int ) ;
 int IFACE_ADDFLAGS ;
 int LogERROR ;
 int PF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 int log_Printf (int ,char*,int ) ;
 int memset (struct ifreq*,char,int) ;
 int strerror (int ) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
iface_ChangeFlags(const char *ifname, int flags, int how)
{
  struct ifreq ifrq;
  int s, new_flags;

  s = ID0socket(PF_INET, SOCK_DGRAM, 0);
  if (s < 0) {
    log_Printf(LogERROR, "iface_ChangeFlags: socket: %s\n", strerror(errno));
    return 0;
  }

  memset(&ifrq, '\0', sizeof ifrq);
  strncpy(ifrq.ifr_name, ifname, sizeof ifrq.ifr_name - 1);
  ifrq.ifr_name[sizeof ifrq.ifr_name - 1] = '\0';
  if (ID0ioctl(s, SIOCGIFFLAGS, &ifrq) < 0) {
    log_Printf(LogERROR, "iface_ChangeFlags: ioctl(SIOCGIFFLAGS): %s\n",
       strerror(errno));
    close(s);
    return 0;
  }



  new_flags = ifrq.ifr_flags & 0xffff;


  if (how == IFACE_ADDFLAGS)
    new_flags |= flags;
  else
    new_flags &= ~flags;
  ifrq.ifr_flags = new_flags & 0xffff;




  if (ID0ioctl(s, SIOCSIFFLAGS, &ifrq) < 0) {
    log_Printf(LogERROR, "iface_ChangeFlags: ioctl(SIOCSIFFLAGS): %s\n",
       strerror(errno));
    close(s);
    return 0;
  }
  close(s);

  return 1;
}
