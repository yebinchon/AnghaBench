
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int saddr ;
typedef int SVCXPRT ;
typedef int SIG_PF ;


 scalar_t__ AF_INET ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int LOG_DAEMON ;
 int LOG_PID ;
 int RPC_ANYSOCK ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_IGN ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int TIOCNOTTY ;
 int YPXFRD_FREEBSD_PROG ;
 int YPXFRD_FREEBSD_VERS ;
 int _PATH_CONSOLE ;
 int _PATH_TTY ;
 int _RPCSVC_CLOSEDOWN ;
 int _msgout (char*) ;
 scalar_t__ _rpcfdtype ;
 int _rpcpmstart ;
 int alarm (int) ;
 int close (int) ;
 scalar_t__ closedown ;
 int dup2 (int,int) ;
 int err (int,char*) ;
 int exit (int) ;
 int fork () ;
 int getdtablesize () ;
 int getopt (int,char**,char*) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int getsockopt (int ,int ,int ,char*,int*) ;
 int ioctl (int,int ,char*) ;
 int load_securenets () ;
 int open (int ,int) ;
 int openlog (char*,int ,int ) ;
 int optarg ;
 int pmap_unset (int ,int ) ;
 scalar_t__ reaper ;
 int signal (int ,int ) ;
 int svc_register (int *,int ,int ,int ,int) ;
 int * svctcp_create (int,int ,int ) ;
 int * svcudp_create (int) ;
 int usage () ;
 int yp_dir ;
 int ypxfrd_freebsd_prog_1 ;
 int ypxfrd_svc_run () ;

int
main(int argc, char *argv[])
{
 register SVCXPRT *transp = ((void*)0);
 int sock;
 int proto = 0;
 struct sockaddr_in saddr;
 int asize = sizeof (saddr);
 int ch;

 while ((ch = getopt(argc, argv, "p:h")) != -1) {
  switch (ch) {
  case 'p':
   yp_dir = optarg;
   break;
  default:
   usage();
   break;
  }
 }

 load_securenets();

 if (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {
  int ssize = sizeof (int);

  if (saddr.sin_family != AF_INET)
   exit(1);
  if (getsockopt(0, SOL_SOCKET, SO_TYPE,
    (char *)&_rpcfdtype, &ssize) == -1)
   exit(1);
  sock = 0;
  _rpcpmstart = 1;
  proto = 0;
  openlog("rpc.ypxfrd", LOG_PID, LOG_DAEMON);
 } else {

  int size;
  int pid, i;

  pid = fork();
  if (pid < 0)
   err(1, "fork");
  if (pid)
   exit(0);
  size = getdtablesize();
  for (i = 0; i < size; i++)
   (void) close(i);
  i = open(_PATH_CONSOLE, 2);
  (void) dup2(i, 1);
  (void) dup2(i, 2);
  i = open(_PATH_TTY, 2);
  if (i >= 0) {
   (void) ioctl(i, TIOCNOTTY, (char *)((void*)0));
   (void) close(i);
  }
  openlog("rpc.ypxfrd", LOG_PID, LOG_DAEMON);

  sock = RPC_ANYSOCK;
  (void) pmap_unset(YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS);
 }

 if ((_rpcfdtype == 0) || (_rpcfdtype == SOCK_DGRAM)) {
  transp = svcudp_create(sock);
  if (transp == ((void*)0)) {
   _msgout("cannot create udp service.");
   exit(1);
  }
  if (!_rpcpmstart)
   proto = IPPROTO_UDP;
  if (!svc_register(transp, YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, ypxfrd_freebsd_prog_1, proto)) {
   _msgout("unable to register (YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, udp).");
   exit(1);
  }
 }

 if ((_rpcfdtype == 0) || (_rpcfdtype == SOCK_STREAM)) {
  transp = svctcp_create(sock, 0, 0);
  if (transp == ((void*)0)) {
   _msgout("cannot create tcp service.");
   exit(1);
  }
  if (!_rpcpmstart)
   proto = IPPROTO_TCP;
  if (!svc_register(transp, YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, ypxfrd_freebsd_prog_1, proto)) {
   _msgout("unable to register (YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS, tcp).");
   exit(1);
  }
 }

 if (transp == (SVCXPRT *)((void*)0)) {
  _msgout("could not create a handle");
  exit(1);
 }
 if (_rpcpmstart) {
  (void) signal(SIGALRM, (SIG_PF) closedown);
  (void) alarm(_RPCSVC_CLOSEDOWN/2);
 }

 (void) signal(SIGPIPE, SIG_IGN);
 (void) signal(SIGCHLD, (SIG_PF) reaper);
 (void) signal(SIGTERM, (SIG_PF) reaper);
 (void) signal(SIGINT, (SIG_PF) reaper);
 (void) signal(SIGHUP, (SIG_PF) reaper);

 ypxfrd_svc_run();
 _msgout("svc_run returned");
 exit(1);

}
