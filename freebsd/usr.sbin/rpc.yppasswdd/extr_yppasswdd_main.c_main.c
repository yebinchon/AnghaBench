
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct sigaction {int sa_flags; } ;
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct netconfig {int * nc_protofmly; } ;
typedef int socklen_t ;
typedef int saddr ;
typedef int sa ;
typedef int myname ;
typedef int SVCXPRT ;
typedef int SIG_PF ;


 scalar_t__ AF_INET ;
 int IPPROTO_UDP ;
 int LOG_DAEMON ;
 int LOG_PID ;
 int MASTER_YPPASSWDPROG ;
 int MASTER_YPPASSWDVERS ;
 int MAXHOSTNAMELEN ;
 int NC_LOOPBACK ;
 int RLIMIT_CORE ;
 int RLIMIT_CPU ;
 int RLIMIT_DATA ;
 int RLIMIT_FSIZE ;
 int RLIMIT_RSS ;
 int RLIMIT_STACK ;
 scalar_t__ RLIM_INFINITY ;
 int RPC_ANYSOCK ;
 int RPC_MAXDATASIZE ;
 int RPC_SVC_CONNMAXREC_SET ;
 int SA_NOCLDWAIT ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_IGN ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int YPPASSWDPROG ;
 int YPPASSWDVERS ;
 int YPPROG ;
 int YPVERS ;
 int _RPCSVC_CLOSEDOWN ;
 int _localhost ;
 int _passwd_byname ;
 int _rpcfdtype ;
 int _rpcpmstart ;
 int alarm (int) ;
 int allow_additions ;
 scalar_t__ chmod (int ,int ) ;
 scalar_t__ closedown ;
 scalar_t__ daemon (int ,int ) ;
 int endnetconfig (void*) ;
 int err (int,char*,...) ;
 int errno ;
 int exit (int) ;
 int gethostname (char*,int) ;
 struct netconfig* getnetconfig (void*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getrpcport (int ,int ,int ,int ) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int getsockopt (int ,int ,int ,char*,int*) ;
 int inplace ;
 int load_securenets () ;
 int master_yppasswdprog_1 ;
 int memset (struct sigaction*,int ,int) ;
 int multidomain ;
 int nc_sperror () ;
 int no_chfn ;
 int no_chsh ;
 int openlog (char*,int ,int ) ;
 void* optarg ;
 void* passfile_default ;
 scalar_t__ reload ;
 int resvport ;
 int rpc_control (int ,int*) ;
 int rpcb_unset (int ,int ,int *) ;
 void* setnetconfig () ;
 int setrlimit (int ,struct rlimit*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int signal (int ,int ) ;
 int sockname ;
 scalar_t__ strcmp (int *,int ) ;
 int strerror (int ) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 scalar_t__ svc_create (int ,int ,int ,char*) ;
 int svc_reg (int *,int ,int ,int ,struct netconfig*) ;
 int svc_run () ;
 int * svcunix_create (int ,int ,int ,int ) ;
 scalar_t__ terminate ;
 int unlink (int ) ;
 int usage () ;
 int verbose ;
 void* yp_dir ;
 int yp_error (char*,...) ;
 scalar_t__ yp_get_default_domain (int **) ;
 int * yppasswd_domain ;
 int yppasswdprog_1 ;
 char* ypxfr_get_master (int *,int ,int ,int ) ;

int
main(int argc, char *argv[])
{
 struct rlimit rlim;
 SVCXPRT *transp = ((void*)0);
 struct sockaddr_in saddr;
 socklen_t asize = sizeof (saddr);
 struct netconfig *nconf;
 struct sigaction sa;
 void *localhandle;
 int ch;
 char *mastername;
 char myname[MAXHOSTNAMELEN + 2];
 int maxrec = RPC_MAXDATASIZE;

 extern int debug;

 debug = 1;

 while ((ch = getopt(argc, argv, "t:d:p:sfamuivh")) != -1) {
  switch (ch) {
  case 't':
   passfile_default = optarg;
   break;
  case 'd':
   yppasswd_domain = optarg;
   break;
  case 's':
   no_chsh++;
   break;
  case 'f':
   no_chfn++;
   break;
  case 'p':
   yp_dir = optarg;
   break;
  case 'a':
   allow_additions++;
   break;
  case 'm':
   multidomain++;
   break;
  case 'i':
   inplace++;
   break;
  case 'v':
   verbose++;
   break;
  case 'u':
   resvport = 0;
   break;
  default:
  case 'h':
   usage();
   break;
  }
 }

 if (yppasswd_domain == ((void*)0)) {
  if (yp_get_default_domain(&yppasswd_domain)) {
   yp_error("no domain specified and system domain name isn't set -- aborting");

  usage();
  }
 }

 load_securenets();

 if (getrpcport(_localhost, YPPROG, YPVERS, IPPROTO_UDP) <= 0) {
  yp_error("no ypserv processes registered with local portmap");
  yp_error("this host is not an NIS server -- aborting");
  exit(1);
 }

 if ((mastername = ypxfr_get_master(yppasswd_domain,
   _passwd_byname, _localhost, 0)) == ((void*)0)) {
  yp_error("can't get name of NIS master server for domain %s",
        yppasswd_domain);
  exit(1);
 }

 if (gethostname((char *)&myname, sizeof(myname)) == -1) {
  yp_error("can't get local hostname: %s", strerror(errno));
  exit(1);
 }

 if (strncasecmp(mastername, (char *)&myname, sizeof(myname))) {
  yp_error("master of %s is %s, but we are %s",
   "passwd.byname", mastername, myname);
  yp_error("this host is not the NIS master server for the %s domain -- aborting", yppasswd_domain);

  exit(1);
 }

 debug = 0;

 if (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {
  socklen_t ssize = sizeof (int);
  if (saddr.sin_family != AF_INET)
   exit(1);
  if (getsockopt(0, SOL_SOCKET, SO_TYPE,
      (char *)&_rpcfdtype, &ssize) == -1)
   exit(1);
  _rpcpmstart = 1;
 }

 if (!debug && _rpcpmstart == 0) {
  if (daemon(0,0)) {
   err(1,"cannot fork");
  }
 }
 openlog("rpc.yppasswdd", LOG_PID, LOG_DAEMON);
 memset(&sa, 0, sizeof(sa));
 sa.sa_flags = SA_NOCLDWAIT;
 sigaction(SIGCHLD, &sa, ((void*)0));

 rpcb_unset(YPPASSWDPROG, YPPASSWDVERS, ((void*)0));
 rpcb_unset(MASTER_YPPASSWDPROG, MASTER_YPPASSWDVERS, ((void*)0));

 rpc_control(RPC_SVC_CONNMAXREC_SET, &maxrec);

 if (svc_create(yppasswdprog_1, YPPASSWDPROG, YPPASSWDVERS, "netpath") == 0) {
  yp_error("cannot create yppasswd service.");
  exit(1);
 }
 if (svc_create(master_yppasswdprog_1, MASTER_YPPASSWDPROG,
     MASTER_YPPASSWDVERS, "netpath") == 0) {
  yp_error("cannot create master_yppasswd service.");
  exit(1);
 }

 nconf = ((void*)0);
 localhandle = setnetconfig();
 while ((nconf = getnetconfig(localhandle)) != ((void*)0)) {
  if (nconf->nc_protofmly != ((void*)0) &&
      strcmp(nconf->nc_protofmly, NC_LOOPBACK) == 0)
   break;
 }
 if (nconf == ((void*)0)) {
  yp_error("getnetconfigent unix: %s", nc_sperror());
  exit(1);
 }
 unlink(sockname);
 transp = svcunix_create(RPC_ANYSOCK, 0, 0, sockname);
 if (transp == ((void*)0)) {
  yp_error("cannot create AF_LOCAL service.");
  exit(1);
 }
 if (!svc_reg(transp, MASTER_YPPASSWDPROG, MASTER_YPPASSWDVERS,
     master_yppasswdprog_1, nconf)) {
  yp_error("unable to register (MASTER_YPPASSWDPROG, 		    MASTER_YPPASSWDVERS, unix).");

  exit(1);
 }
 endnetconfig(localhandle);


 if (chmod(sockname, 0))
  err(1, "chmod of %s failed", sockname);

 if (transp == (SVCXPRT *)((void*)0)) {
  yp_error("could not create a handle");
  exit(1);
 }
 if (_rpcpmstart) {
  (void) signal(SIGALRM, (SIG_PF) closedown);
  (void) alarm(_RPCSVC_CLOSEDOWN/2);
 }


 rlim.rlim_cur = rlim.rlim_max = RLIM_INFINITY;
 (void)setrlimit(RLIMIT_CPU, &rlim);
 (void)setrlimit(RLIMIT_FSIZE, &rlim);
 (void)setrlimit(RLIMIT_STACK, &rlim);
 (void)setrlimit(RLIMIT_DATA, &rlim);
 (void)setrlimit(RLIMIT_RSS, &rlim);


 rlim.rlim_cur = rlim.rlim_max = 0;
 (void)setrlimit(RLIMIT_CORE, &rlim);


 (void)signal(SIGALRM, SIG_IGN);
 (void)signal(SIGHUP, (SIG_PF) reload);
 (void)signal(SIGINT, SIG_IGN);
 (void)signal(SIGPIPE, SIG_IGN);
 (void)signal(SIGQUIT, SIG_IGN);
 (void)signal(SIGTERM, (SIG_PF) terminate);

 svc_run();
 yp_error("svc_run returned");
 exit(1);

}
