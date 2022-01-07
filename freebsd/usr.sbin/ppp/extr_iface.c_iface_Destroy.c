
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_name; } ;
struct iface {int name; } ;
typedef int caddr_t ;


 scalar_t__ ID0ioctl (int,int ,int ) ;
 int ID0socket (int ,int ,int ) ;
 int LogERROR ;
 int LogWARN ;
 int PF_INET ;
 int SIOCIFDESTROY ;
 int SOCK_DGRAM ;
 int errno ;
 int iface_Free (struct iface*) ;
 int log_Printf (int ,char*,int ,...) ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int) ;

void
iface_Destroy(struct iface *iface)
{
  struct ifreq ifr;
  int s;

  if (iface != ((void*)0)) {
    if ((s = ID0socket(PF_INET, SOCK_DGRAM, 0)) == -1) {
      log_Printf(LogERROR, "iface_Destroy: socket(): %s\n", strerror(errno));
    } else {
      strlcpy(ifr.ifr_name, iface->name, sizeof(ifr.ifr_name));
      if (ID0ioctl(s, SIOCIFDESTROY, (caddr_t)&ifr) < 0)
        log_Printf(LogWARN, "iface_Destroy: ioctl(SIOCIFDESTROY, %s): %s\n",
               iface->name, strerror(errno));
    }
    iface_Free(iface);
  }
}
