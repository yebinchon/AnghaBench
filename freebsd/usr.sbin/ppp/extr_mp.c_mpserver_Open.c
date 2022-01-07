
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int class; int len; scalar_t__ address; } ;
struct peerid {char* authname; TYPE_1__ enddisc; } ;
struct TYPE_5__ {int sun_len; int sun_path; int sun_family; } ;
struct mpserver {int fd; TYPE_2__ socket; } ;
typedef int mode_t ;


 int AF_LOCAL ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ ECONNREFUSED ;
 scalar_t__ ID0bind_un (int,TYPE_2__*) ;
 scalar_t__ ID0connect_un (int,TYPE_2__*) ;
 int ID0socket (int ,int ,int ) ;
 int LogALERT ;
 int LogERROR ;
 int LogPHASE ;
 int MPSERVER_CONNECTED ;
 int MPSERVER_FAILED ;
 int MPSERVER_LISTENING ;
 int PF_LOCAL ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 char* _PATH_VARRUN ;
 int close (int) ;
 scalar_t__ errno ;
 int log_Printf (int ,char*,...) ;
 int mpserver_Close (struct mpserver*) ;
 int setsockopt (int,int ,int ,struct sockaddr*,int) ;
 int snprintf (int ,int,char*,...) ;
 int strerror (scalar_t__) ;
 int umask (int) ;

int
mpserver_Open(struct mpserver *s, struct peerid *peer)
{
  int f, l;
  mode_t mask;

  if (s->fd != -1) {
    log_Printf(LogALERT, "Internal error !  mpserver already open\n");
    mpserver_Close(s);
  }

  l = snprintf(s->socket.sun_path, sizeof s->socket.sun_path, "%sppp-%s-%02x-",
               _PATH_VARRUN, peer->authname, peer->enddisc.class);
  if (l < 0) {
    log_Printf(LogERROR, "mpserver: snprintf(): %s\n", strerror(errno));
    return MPSERVER_FAILED;
  }

  for (f = 0;
       f < peer->enddisc.len && (size_t)l < sizeof s->socket.sun_path - 2;
       f++) {
    snprintf(s->socket.sun_path + l, sizeof s->socket.sun_path - l,
             "%02x", *(u_char *)(peer->enddisc.address+f));
    l += 2;
  }

  s->socket.sun_family = AF_LOCAL;
  s->socket.sun_len = sizeof s->socket;
  s->fd = ID0socket(PF_LOCAL, SOCK_DGRAM, 0);
  if (s->fd < 0) {
    log_Printf(LogERROR, "mpserver: socket(): %s\n", strerror(errno));
    return MPSERVER_FAILED;
  }

  setsockopt(s->fd, SOL_SOCKET, SO_REUSEADDR, (struct sockaddr *)&s->socket,
             sizeof s->socket);
  mask = umask(0177);






  if (ID0bind_un(s->fd, &s->socket) < 0) {
    if (errno != EADDRINUSE) {
      log_Printf(LogPHASE, "mpserver: can't create bundle socket %s (%s)\n",
                s->socket.sun_path, strerror(errno));
      umask(mask);
      close(s->fd);
      s->fd = -1;
      return MPSERVER_FAILED;
    }


    umask(mask);
    if (ID0connect_un(s->fd, &s->socket) < 0) {
      log_Printf(LogPHASE, "mpserver: can't connect to bundle socket %s (%s)\n",
                s->socket.sun_path, strerror(errno));
      if (errno == ECONNREFUSED)
        log_Printf(LogPHASE, "          The previous server died badly !\n");
      close(s->fd);
      s->fd = -1;
      return MPSERVER_FAILED;
    }


    return MPSERVER_CONNECTED;
  }

  return MPSERVER_LISTENING;
}
