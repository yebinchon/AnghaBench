
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {scalar_t__ necessity; } ;
struct TYPE_8__ {TYPE_3__ cd; } ;
struct TYPE_6__ {char* full; char* base; } ;
struct TYPE_5__ {int name; } ;
struct physical {int fd; TYPE_4__ cfg; TYPE_2__ name; TYPE_1__ link; } ;
struct device {int name; } ;


 scalar_t__ AF_INET ;
 scalar_t__ CD_DEFAULT ;
 int LogDEBUG ;
 int LogPHASE ;
 int LogWARN ;
 int PHYSICAL_FORCE_ASYNC ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int S_IFSOCK ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 char* inet_ntoa (int ) ;
 int log_Printf (int ,char*,...) ;
 int ntohs (int ) ;
 int physical_SetupStack (struct physical*,int ,int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 int tcp_OpenConnection (int ,char*,char*) ;
 struct device tcpdevice ;

struct device *
tcp_Create(struct physical *p)
{
  char *cp, *host, *port, *svc;

  if (p->fd < 0) {
    if ((cp = strchr(p->name.full, ':')) != ((void*)0) && !strchr(cp + 1, ':')) {
      *cp = '\0';
      host = p->name.full;
      port = cp + 1;
      svc = strchr(port, '/');
      if (svc && strcasecmp(svc, "/tcp")) {
        *cp = ':';
        return 0;
      }
      if (svc) {
        p->fd--;
        *svc = '\0';
      }
      if (*host && *port) {
        p->fd = tcp_OpenConnection(p->link.name, host, port);
        *cp = ':';
        if (svc)
          *svc = '/';
        if (p->fd >= 0)
          log_Printf(LogDEBUG, "%s: Opened tcp socket %s\n", p->link.name,
                     p->name.full);
      } else {
        if (svc)
          *svc = '/';
        *cp = ':';
      }
    }
  }

  if (p->fd >= 0) {

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

      if (sz == sizeof type && type == SOCK_STREAM) {
        struct sockaddr_in sock;
        struct sockaddr *sockp = (struct sockaddr *)&sock;

        if (*p->name.full == '\0') {
          sz = sizeof sock;
          if (getpeername(p->fd, sockp, &sz) != 0 ||
              sz != sizeof(struct sockaddr_in) || sock.sin_family != AF_INET) {
            log_Printf(LogDEBUG, "%s: Link is SOCK_STREAM, but not inet\n",
                       p->link.name);
            return ((void*)0);
          }

          log_Printf(LogPHASE, "%s: Link is a tcp socket\n", p->link.name);

          snprintf(p->name.full, sizeof p->name.full, "%s:%d/tcp",
                   inet_ntoa(sock.sin_addr), ntohs(sock.sin_port));
          p->name.base = p->name.full;
        }
        physical_SetupStack(p, tcpdevice.name, PHYSICAL_FORCE_ASYNC);
        if (p->cfg.cd.necessity != CD_DEFAULT)
          log_Printf(LogWARN, "Carrier settings ignored\n");
        return &tcpdevice;
      }
    }
  }

  return ((void*)0);
}
