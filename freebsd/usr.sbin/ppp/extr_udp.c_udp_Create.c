
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device {int name; } ;
struct udpdevice {struct device dev; int connected; } ;
struct stat {int st_mode; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_11__ {scalar_t__ necessity; } ;
struct TYPE_12__ {TYPE_5__ cd; } ;
struct TYPE_8__ {scalar_t__ openmode; } ;
struct TYPE_9__ {TYPE_2__ cfg; } ;
struct TYPE_10__ {TYPE_3__ lcp; int name; } ;
struct TYPE_7__ {char* full; } ;
struct physical {int fd; TYPE_6__ cfg; TYPE_4__ link; TYPE_1__ name; } ;


 scalar_t__ CD_DEFAULT ;
 int LogPHASE ;
 int LogWARN ;
 scalar_t__ OPEN_PASSIVE ;
 int PHYSICAL_FORCE_SYNC ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int S_IFSOCK ;
 int UDP_CONNECTED ;
 int UDP_MAYBEUNCONNECTED ;
 int baseudpdevice ;
 int close (int) ;
 int errno ;
 int fstat (int,struct stat*) ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int log_Printf (int ,char*,...) ;
 struct udpdevice* malloc (int) ;
 int memcpy (struct device*,int *,int) ;
 int physical_SetupStack (struct physical*,int ,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 int strerror (int ) ;
 struct udpdevice* udp_CreateDevice (struct physical*,char*,char*) ;

struct device *
udp_Create(struct physical *p)
{
  char *cp, *host, *port, *svc;
  struct udpdevice *dev;

  dev = ((void*)0);
  if (p->fd < 0) {
    if ((cp = strchr(p->name.full, ':')) != ((void*)0) && !strchr(cp + 1, ':')) {
      *cp = '\0';
      host = p->name.full;
      port = cp + 1;
      svc = strchr(port, '/');
      if (svc && strcasecmp(svc, "/udp")) {
        *cp = ':';
        return ((void*)0);
      }
      if (svc) {
        p->fd--;
        *svc = '\0';
      }

      if (*host && *port)
        dev = udp_CreateDevice(p, host, port);

      *cp = ':';
      if (svc)
        *svc = '/';
    }
  } else {

    struct stat st;

    if (fstat(p->fd, &st) != -1 && (st.st_mode & S_IFSOCK)) {
      int type, sz;

      sz = sizeof type;
      if (getsockopt(p->fd, SOL_SOCKET, SO_TYPE, &type, &sz) == -1) {
        log_Printf(LogPHASE, "%s: Link is a closed socket !\n", p->link.name);
        close(p->fd);
        p->fd = -1;
        return ((void*)0);
      }

      if (sz == sizeof type && type == SOCK_DGRAM) {
        struct sockaddr_in sock;
        struct sockaddr *sockp = (struct sockaddr *)&sock;

        if ((dev = malloc(sizeof *dev)) == ((void*)0)) {
          log_Printf(LogWARN, "%s: Cannot allocate a udp device: %s\n",
                     p->link.name, strerror(errno));
          return ((void*)0);
        }

        if (getpeername(p->fd, sockp, &sz) == 0) {
          log_Printf(LogPHASE, "%s: Link is a connected udp socket\n",
                     p->link.name);
          dev->connected = UDP_CONNECTED;
 } else {
          log_Printf(LogPHASE, "%s: Link is a disconnected udp socket\n",
                     p->link.name);

          dev->connected = UDP_MAYBEUNCONNECTED;

          if (p->link.lcp.cfg.openmode != OPEN_PASSIVE) {
            log_Printf(LogPHASE, "%s:   Changing openmode to PASSIVE\n",
                       p->link.name);
            p->link.lcp.cfg.openmode = OPEN_PASSIVE;
          }
        }
      }
    }
  }

  if (dev) {
    memcpy(&dev->dev, &baseudpdevice, sizeof dev->dev);
    physical_SetupStack(p, dev->dev.name, PHYSICAL_FORCE_SYNC);
    if (p->cfg.cd.necessity != CD_DEFAULT)
      log_Printf(LogWARN, "Carrier settings ignored\n");
    return &dev->dev;
  }

  return ((void*)0);
}
