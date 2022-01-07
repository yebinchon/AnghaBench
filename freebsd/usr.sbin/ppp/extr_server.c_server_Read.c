
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {scalar_t__ sa_len; int sa_family; } ;
struct TYPE_3__ {int sockname; } ;
struct server {scalar_t__ fd; TYPE_1__ cfg; } ;
struct TYPE_4__ {char* type; char* from; } ;
struct prompt {int desc; struct prompt* next; TYPE_2__ src; } ;
struct ncpaddr {int dummy; } ;
struct fdescriptor {int dummy; } ;
struct bundle {int dummy; } ;
typedef int fd_set ;





 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 int LogALERT ;
 int LogERROR ;
 int LogPHASE ;
 int accept (scalar_t__,struct sockaddr*,int*) ;
 int close (int) ;
 struct server* descriptor2server (struct fdescriptor*) ;
 scalar_t__ descriptor_IsSet (int *,int const*) ;
 int descriptor_Read (int *,struct bundle*,int const*) ;
 int errno ;
 int log_Printf (int ,char*,...) ;
 struct prompt* log_PromptList () ;
 scalar_t__ log_PromptListChanged ;
 char* ncpaddr_ntoa (struct ncpaddr*) ;
 int ncpaddr_setsa (struct ncpaddr*,struct sockaddr*) ;
 int ntohs (int ) ;
 struct prompt* prompt_Create (struct server*,struct bundle*,int) ;
 int prompt_Required (struct prompt*) ;
 int prompt_TtyCommandMode (struct prompt*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strerror (int ) ;
 int strncpy (char*,int ,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
server_Read(struct fdescriptor *d, struct bundle *bundle, const fd_set *fdset)
{
  struct server *s = descriptor2server(d);
  struct sockaddr_storage ss;
  struct sockaddr *sa = (struct sockaddr *)&ss;
  struct sockaddr_in *sin = (struct sockaddr_in *)&ss;

  struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)&ss;

  int ssize = sizeof ss, wfd;
  struct prompt *p;
  struct ncpaddr addr;

  if (s->fd >= 0 && FD_ISSET(s->fd, fdset)) {
    wfd = accept(s->fd, sa, &ssize);
    if (wfd < 0)
      log_Printf(LogERROR, "server_Read: accept(): %s\n", strerror(errno));
    else if (sa->sa_len == 0) {
      close(wfd);
      wfd = -1;
    }
  } else
    wfd = -1;

  if (wfd >= 0)
    switch (sa->sa_family) {
      case 128:
        log_Printf(LogPHASE, "Connected to local client.\n");
        break;

      case 130:
        ncpaddr_setsa(&addr, sa);
        if (ntohs(sin->sin_port) < 1024) {
          log_Printf(LogALERT, "Rejected client connection from %s:%u"
                    "(invalid port number) !\n",
                    ncpaddr_ntoa(&addr), ntohs(sin->sin_port));
          close(wfd);
          wfd = -1;
          break;
        }
        log_Printf(LogPHASE, "Connected to client from %s:%u\n",
                  ncpaddr_ntoa(&addr), ntohs(sin->sin_port));
        break;


      case 129:
        ncpaddr_setsa(&addr, sa);
        if (ntohs(sin6->sin6_port) < 1024) {
          log_Printf(LogALERT, "Rejected client connection from %s:%u"
                    "(invalid port number) !\n",
                    ncpaddr_ntoa(&addr), ntohs(sin6->sin6_port));
          close(wfd);
          wfd = -1;
          break;
        }
        log_Printf(LogPHASE, "Connected to client from %s:%u\n",
                  ncpaddr_ntoa(&addr), ntohs(sin6->sin6_port));
        break;


      default:
        write(wfd, "Unrecognised access !\n", 22);
        close(wfd);
        wfd = -1;
        break;
    }

  if (wfd >= 0) {
    if ((p = prompt_Create(s, bundle, wfd)) == ((void*)0)) {
      write(wfd, "Connection refused.\n", 20);
      close(wfd);
    } else {
      switch (sa->sa_family) {
        case 128:
          p->src.type = "local";
          strncpy(p->src.from, s->cfg.sockname, sizeof p->src.from - 1);
          p->src.from[sizeof p->src.from - 1] = '\0';
          break;
        case 130:
          p->src.type = "ip";
          snprintf(p->src.from, sizeof p->src.from, "%s:%u",
                   ncpaddr_ntoa(&addr), ntohs(sin->sin_port));
          break;

        case 129:
          p->src.type = "ip6";
          snprintf(p->src.from, sizeof p->src.from, "%s:%u",
                   ncpaddr_ntoa(&addr), ntohs(sin6->sin6_port));
          break;

      }
      prompt_TtyCommandMode(p);
      prompt_Required(p);
    }
  }

  log_PromptListChanged = 0;
  for (p = log_PromptList(); p; p = p->next)
    if (descriptor_IsSet(&p->desc, fdset)) {
      descriptor_Read(&p->desc, bundle, fdset);
      if (log_PromptListChanged)
        break;
    }
}
