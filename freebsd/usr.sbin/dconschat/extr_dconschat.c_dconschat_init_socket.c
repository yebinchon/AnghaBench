
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;
struct dcons_state {int to; int kq; int zero; int traw; int tsave; struct dcons_port* port; } ;
struct dcons_port {int port; int sport; int infd; int outfd; int s; struct addrinfo* res; } ;
struct addrinfo {int ai_addrlen; int ai_addr; scalar_t__ ai_protocol; int ai_socktype; int ai_family; int ai_flags; } ;
typedef int service ;
typedef int on ;
typedef int hints ;


 int AI_PASSIVE ;
 int EVFILT_READ ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int,int ,int,int ,int,void*) ;
 int NOTE_LOWAT ;
 int PF_INET ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TCSADRAIN ;
 scalar_t__ bind (int,int ,int ) ;
 int cfmakeraw (int *) ;
 int err (int,char*) ;
 int errx (int,char*,char*,int ) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int kevent (int ,struct kevent*,int,int *,int ,int *) ;
 scalar_t__ listen (int,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int printf (char*,char*,int,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,scalar_t__) ;
 int tc_set ;
 scalar_t__ tcgetattr (int,int *) ;
 int tcsetattr (int,int ,int *) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
dconschat_init_socket(struct dcons_state *dc, int port, char *host, int sport)
{
 struct addrinfo hints, *res;
 int on = 1, error;
 char service[10];
 struct kevent kev;
 struct dcons_port *p;

 p = &dc->port[port];
 p->port = port;
 p->sport = sport;
 p->infd = p->outfd = -1;

 if (sport < 0)
  return;

 if (sport == 0) {


  p->infd = STDIN_FILENO;
  p->outfd = STDOUT_FILENO;
  p->s = -1;
  if (tc_set == 0 &&
      tcgetattr(STDIN_FILENO, &dc->tsave) == 0) {
   dc->traw = dc->tsave;
   cfmakeraw(&dc->traw);
   tcsetattr(STDIN_FILENO, TCSADRAIN, &dc->traw);
   tc_set = 1;
  }
  EV_SET(&kev, p->infd, EVFILT_READ, EV_ADD, NOTE_LOWAT, 1,
      (void *)p);
  kevent(dc->kq, &kev, 1, ((void*)0), 0, &dc->zero);
  return;
 }

 memset(&hints, 0, sizeof(hints));
 hints.ai_flags = AI_PASSIVE;

 hints.ai_family = PF_INET;



 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = 0;

 if (verbose)
  printf("%s:%d for port %d\n",
   host == ((void*)0) ? "*" : host, sport, port);
 snprintf(service, sizeof(service), "%d", sport);
 error = getaddrinfo(host, service, &hints, &res);
 if (error)
  errx(1, "tcp/%s: %s\n", service, gai_strerror(error));
 p->res = res;
 p->s = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (p->s < 0)
  err(1, "socket");
 setsockopt(p->s, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

 if (bind(p->s, p->res->ai_addr, p->res->ai_addrlen) < 0) {
  err(1, "bind");
 }
 if (listen(p->s, 1) < 0)
  err(1, "listen");
 EV_SET(&kev, p->s, EVFILT_READ, EV_ADD | EV_ONESHOT, 0, 0, (void *)p);
 error = kevent(dc->kq, &kev, 1, ((void*)0), 0, &dc->to);
 if (error < 0)
  err(1, "kevent");
 return;
}
