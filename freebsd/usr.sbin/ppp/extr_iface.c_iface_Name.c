
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {char* ifr_data; int ifr_name; } ;
struct iface {char* name; } ;
typedef int caddr_t ;


 scalar_t__ ID0ioctl (int,int ,int ) ;
 int ID0socket (int ,int ,int ) ;
 int LogERROR ;
 int LogWARN ;
 int PF_INET ;
 int SIOCSIFNAME ;
 int SOCK_DGRAM ;
 int errno ;
 int free (char*) ;
 int log_Printf (int ,char*,char const*,...) ;
 char* strdup (char const*) ;
 int strerror (int ) ;
 int strlcpy (int ,char*,int) ;

int
iface_Name(struct iface *iface, const char *name)
{
  struct ifreq ifr;
  int s;
  char *newname;

  if ((newname = strdup(name)) == ((void*)0)) {
    log_Printf(LogWARN, "iface name: strdup failed: %s\n", strerror(errno));
    return 0;
  }

  if ((s = ID0socket(PF_INET, SOCK_DGRAM, 0)) == -1) {
    log_Printf(LogERROR, "iface name: socket(): %s\n", strerror(errno));
    free(newname);
    return 0;
  }

  strlcpy(ifr.ifr_name, iface->name, sizeof(ifr.ifr_name));
  ifr.ifr_data = newname;
  if (ID0ioctl(s, SIOCSIFNAME, (caddr_t)&ifr) < 0) {
    log_Printf(LogWARN, "iface name: ioctl(SIOCSIFNAME, %s -> %s): %s\n",
               name, newname, strerror(errno));
    free(newname);
    return 0;
  }

  free(iface->name);
  iface->name = newname;

  return 1;
}
