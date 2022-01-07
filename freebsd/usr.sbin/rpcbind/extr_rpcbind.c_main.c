
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;
struct passwd {int pw_uid; } ;
struct netconfig {int nc_flag; int nc_protofmly; } ;


 scalar_t__ EWOULDBLOCK ;
 int LOCK_EX ;
 int LOCK_NB ;
 int LOG_CONS ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int NC_VISIBLE ;
 int O_CREAT ;
 int O_RDONLY ;
 int RLIMIT_NOFILE ;
 int RPCBINDDLOCK ;
 int RPC_MAXDATASIZE ;
 int RPC_SVC_CONNMAXREC_SET ;
 int RUN_AS ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 scalar_t__ daemon (int ,int ) ;
 scalar_t__ debugging ;
 scalar_t__ doabort ;
 int endnetconfig (void*) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit (int) ;
 int flock (int,int) ;
 int fprintf (int ,char*) ;
 scalar_t__ geteuid () ;
 struct netconfig* getnetconfig (void*) ;
 struct netconfig* getnetconfigent (char*) ;
 struct passwd* getpwnam (int ) ;
 int getrlimit (int ,struct rlimit*) ;
 int init_transport (struct netconfig*) ;
 int ipv6_only ;
 int my_svc_run () ;
 int network_init () ;
 int open (int ,int,int) ;
 int openlog (char*,int ,int ) ;
 int parseargs (int,char**) ;
 int pipe (int*) ;
 int printf (char*) ;
 int read_warmstart () ;
 int reap ;
 int rpc_control (int ,int*) ;
 int rpcbind_abort () ;
 int rpcbindlockfd ;
 scalar_t__ runasdaemon ;
 void* setnetconfig () ;
 int setrlimit (int ,struct rlimit*) ;
 int setuid (int ) ;
 int signal (int ,int ) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 int syslog (int ,char*,...) ;
 char* tcptrans ;
 int terminate ;
 int terminate_rfd ;
 int terminate_wfd ;
 char* udptrans ;
 int update_bound_sa () ;
 scalar_t__ warmstart ;

int
main(int argc, char *argv[])
{
 struct netconfig *nconf;
 void *nc_handle;
 struct rlimit rl;
 int maxrec = RPC_MAXDATASIZE;
 int error, fds[2];

 parseargs(argc, argv);

 update_bound_sa();


 if ((rpcbindlockfd = (open(RPCBINDDLOCK,
     O_RDONLY|O_CREAT, 0444))) == -1)
  err(1, "%s", RPCBINDDLOCK);

 if(flock(rpcbindlockfd, LOCK_EX|LOCK_NB) == -1 && errno == EWOULDBLOCK)
  errx(1, "another rpcbind is already running. Aborting");

 getrlimit(RLIMIT_NOFILE, &rl);
 if (rl.rlim_cur < 128) {
  if (rl.rlim_max <= 128)
   rl.rlim_cur = rl.rlim_max;
  else
   rl.rlim_cur = 128;
  setrlimit(RLIMIT_NOFILE, &rl);
 }
 openlog("rpcbind", LOG_CONS, LOG_DAEMON);
 if (geteuid()) {
  fprintf(stderr, "Sorry. You are not superuser\n");
  exit(1);
 }
 nc_handle = setnetconfig();
 if (nc_handle == ((void*)0)) {
  syslog(LOG_ERR, "could not read /etc/netconfig");
  exit(1);
 }





 nconf = getnetconfigent("local");
 if (nconf == ((void*)0))
  nconf = getnetconfigent("unix");
 if (nconf == ((void*)0)) {
  syslog(LOG_ERR, "%s: can't find local transport\n", argv[0]);
  exit(1);
 }

 rpc_control(RPC_SVC_CONNMAXREC_SET, &maxrec);

 init_transport(nconf);

 while ((nconf = getnetconfig(nc_handle))) {
     if (nconf->nc_flag & NC_VISIBLE) {
      if (ipv6_only == 1 && strcmp(nconf->nc_protofmly,
      "inet") == 0) {

  } else
      init_transport(nconf);
     }
 }
 endnetconfig(nc_handle);





 error = pipe(fds);
 if (error != 0)
  err(1, "pipe failed");
 terminate_rfd = fds[0];
 terminate_wfd = fds[1];


 (void) signal(SIGCHLD, reap);
 (void) signal(SIGINT, terminate);
 (void) signal(SIGTERM, terminate);
 (void) signal(SIGQUIT, terminate);

 (void) signal(SIGPIPE, SIG_IGN);
 (void) signal(SIGHUP, SIG_IGN);
 (void) signal(SIGUSR1, SIG_IGN);
 (void) signal(SIGUSR2, SIG_IGN);





 if (debugging) {
  printf("rpcbind debugging enabled.");
  if (doabort) {
   printf("  Will abort on errors!\n");
  } else {
   printf("\n");
  }
 } else {
  if (daemon(0, 0))
   err(1, "fork failed");
 }

 if (runasdaemon) {
  struct passwd *p;

  if((p = getpwnam(RUN_AS)) == ((void*)0)) {
   syslog(LOG_ERR, "cannot get uid of daemon: %m");
   exit(1);
  }
  if (setuid(p->pw_uid) == -1) {
   syslog(LOG_ERR, "setuid to daemon failed: %m");
   exit(1);
  }
 }

 network_init();

 my_svc_run();
 syslog(LOG_ERR, "svc_run returned unexpectedly");
 rpcbind_abort();


 return 0;
}
