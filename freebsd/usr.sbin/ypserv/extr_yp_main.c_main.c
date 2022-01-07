
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int nc_flag; int nc_netid; } ;
struct bindaddrlistent {scalar_t__ si_socktype; scalar_t__ si_af; void* ble_hostname; } ;
struct __rpc_sockinfo {scalar_t__ si_socktype; scalar_t__ si_af; void* ble_hostname; } ;
typedef int si ;
typedef int SIG_PF ;


 scalar_t__ AF_INET ;
 int LOG_DAEMON ;
 int LOG_PID ;
 int MADV_PROTECT ;
 int NC_VISIBLE ;
 int NETCONFIG ;
 scalar_t__ RPC_ANYFD ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_IGN ;
 scalar_t__ SLIST_EMPTY (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct bindaddrlistent*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int _RPCSVC_CLOSEDOWN ;
 scalar_t__ __rpc_fd2sockinfo (int ,struct bindaddrlistent*) ;
 scalar_t__ __rpc_nconf2sockinfo (struct netconfig*,struct bindaddrlistent*) ;
 int _msgout (char*,...) ;
 scalar_t__ _rpcaf ;
 scalar_t__ _rpcfd ;
 scalar_t__ _rpcfdtype ;
 int _rpcpmstart ;
 int alarm (int) ;
 int ble_head ;
 int ble_next ;
 scalar_t__ closedown ;
 int create_service (scalar_t__,struct netconfig*,struct bindaddrlistent*) ;
 scalar_t__ daemon (int ,int ) ;
 int debug ;
 int do_dns ;
 int endnetconfig (void*) ;
 int err (int,char*,...) ;
 int errno ;
 int exit (int) ;
 struct netconfig* getnetconfig (void*) ;
 int getopt (int,char**,char*) ;
 int load_securenets () ;
 scalar_t__ madvise (int *,int ,int ) ;
 struct bindaddrlistent* malloc (int) ;
 int memset (struct bindaddrlistent*,int ,int) ;
 int openlog (char*,int ,int ) ;
 void* optarg ;
 scalar_t__ reaper ;
 void* servname ;
 void* setnetconfig () ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 int unregister () ;
 int usage () ;
 void* yp_dir ;
 int yp_init_dbs () ;
 int yp_init_resolver () ;
 int yp_svc_run () ;
 int ypdb_debug ;

int
main(int argc, char *argv[])
{
 int ch;
 int error;
 int ntrans;

 void *nc_handle;
 struct netconfig *nconf;
 struct __rpc_sockinfo si;
 struct bindaddrlistent *blep;

 memset(&si, 0, sizeof(si));
 SLIST_INIT(&ble_head);

 while ((ch = getopt(argc, argv, "dh:np:P:")) != -1) {
  switch (ch) {
  case 'd':
   debug = ypdb_debug = 1;
   break;
  case 'h':
   blep = malloc(sizeof(*blep));
   if (blep == ((void*)0))
    err(1, "malloc() failed: -h %s", optarg);
   blep->ble_hostname = optarg;
   SLIST_INSERT_HEAD(&ble_head, blep, ble_next);
   break;
  case 'n':
   do_dns = 1;
   break;
  case 'p':
   yp_dir = optarg;
   break;
  case 'P':
   servname = optarg;
   break;
  default:
   usage();
  }
 }



 if (SLIST_EMPTY(&ble_head)) {
  blep = malloc(sizeof(*blep));
  if (blep == ((void*)0))
   err(1, "malloc() failed");
  memset(blep, 0, sizeof(*blep));
  SLIST_INSERT_HEAD(&ble_head, blep, ble_next);
 }

 load_securenets();
 yp_init_resolver();



 nc_handle = setnetconfig();
 if (nc_handle == ((void*)0))
  err(1, "cannot read %s", NETCONFIG);
 if (__rpc_fd2sockinfo(0, &si) != 0) {

  _rpcpmstart = 1;
  _rpcfdtype = si.si_socktype;
  _rpcaf = si.si_af;
  _rpcfd = 0;
  openlog("ypserv", LOG_PID, LOG_DAEMON);
 } else {

  if (!debug) {
   if (daemon(0,0)) {
    err(1,"cannot fork");
   }
   openlog("ypserv", LOG_PID, LOG_DAEMON);
  }
  _rpcpmstart = 0;
  _rpcaf = AF_INET;
  _rpcfd = RPC_ANYFD;
  unregister();
 }

 if (madvise(((void*)0), 0, MADV_PROTECT) != 0)
  _msgout("madvise(): %s", strerror(errno));




 ntrans = 0;
 while((nconf = getnetconfig(nc_handle))) {
  if ((nconf->nc_flag & NC_VISIBLE)) {
   if (__rpc_nconf2sockinfo(nconf, &si) == 0) {
    _msgout("cannot get information for %s.  "
        "Ignored.", nconf->nc_netid);
    continue;
   }
   if (_rpcpmstart) {
    if (si.si_socktype != _rpcfdtype ||
        si.si_af != _rpcaf)
     continue;
   } else if (si.si_af != _rpcaf)
     continue;
   error = create_service(_rpcfd, nconf, &si);
   if (error) {
    endnetconfig(nc_handle);
    exit(1);
   }
   ntrans++;
  }
 }
 endnetconfig(nc_handle);
 while(!(SLIST_EMPTY(&ble_head)))
  SLIST_REMOVE_HEAD(&ble_head, ble_next);
 if (ntrans == 0) {
  _msgout("no transport is available.  Aborted.");
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
 yp_svc_run();
 _msgout("svc_run returned");
 exit(1);

}
