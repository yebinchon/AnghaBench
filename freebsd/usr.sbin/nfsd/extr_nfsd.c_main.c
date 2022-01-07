
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsd_nfsd_args {int mirrorcnt; scalar_t__ addrlen; int * addr; } ;
struct nfsd_addsock_args {int sock; int namelen; struct nfsd_addsock_args* name; } ;
struct netconfig {int dummy; } ;
struct netbuf {int maxlen; int len; int buf; } ;
struct addrinfo {void* ai_family; void* ai_socktype; void* ai_protocol; int ai_addrlen; int ai_addr; void* ai_flags; } ;
typedef int socklen_t ;
typedef int pid_t ;
typedef int peer ;
typedef int on ;
typedef int nfs_minvers ;
typedef int fd_set ;
typedef struct nfsd_addsock_args* caddr_t ;
struct TYPE_3__ {char* name; } ;


 void* AF_INET ;
 void* AF_INET6 ;
 void* AI_PASSIVE ;
 int DEFNFSDCNT ;
 int EAFNOSUPPORT ;
 int ECONNABORTED ;
 int EINTR ;
 int EPROTONOSUPPORT ;
 int EX_USAGE ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int IPPROTO_IPV6 ;
 void* IPPROTO_TCP ;
 void* IPPROTO_UDP ;
 int IPV6_V6ONLY ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_PERROR ;
 int LOG_PID ;
 int MAXHOSTNAMELEN ;
 int NFSDEV_MAXMIRRORS ;
 int NFSD_STABLERESTART ;
 int NFSSVC_BACKUPSTABLE ;
 int NFSSVC_NEWSTRUCT ;
 int NFSSVC_NFSDADDSOCK ;
 int NFSSVC_NFSDNFSD ;
 int NFSSVC_STABLERESTART ;
 int NFS_PROGRAM ;
 int NFS_VER2 ;
 int NFS_VER3 ;
 int NFS_VER4 ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGSYS ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 void* SOCK_DGRAM ;
 void* SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_REUSEADDR ;
 int accept (int,struct sockaddr*,int*) ;
 void* atoi (char*) ;
 int backup_stable ;
 int backupfd ;
 scalar_t__ bind (int,int ,int ) ;
 int child_cleanup ;
 int* children ;
 int cleanup ;
 int close (int) ;
 int daemon (int ,int ) ;
 scalar_t__ debug ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fork () ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 struct netconfig* getnetconfigent (char*) ;
 int getopt_long (int,char**,char*,TYPE_1__*,int*) ;
 char* getopt_shortopts ;
 char* getopt_usage ;
 int getpid () ;
 scalar_t__ kldload (char*) ;
 scalar_t__ listen (int,int) ;
 TYPE_1__* longopts ;
 int masterpid ;
 scalar_t__ maxthreads ;
 scalar_t__ maxthreads_set ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ minthreads ;
 scalar_t__ minthreads_set ;
 scalar_t__ modfind (char*) ;
 int nfsd_exit (int) ;
 int nfsdcnt ;
 scalar_t__ nfssvc (int,struct nfsd_addsock_args*) ;
 int nfssvc_nfsd ;
 int nonfs ;
 int open_stable (scalar_t__*,int *) ;
 int openlog (char*,int,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int parse_dsserver (char*,struct nfsd_nfsd_args*) ;
 char** realloc (char**,int) ;
 int reapchild ;
 int rpcb_set (int ,int,struct netconfig*,struct netbuf*) ;
 int select (int,int *,int *,int *,int *) ;
 int set_nfsdcnt (void*) ;
 scalar_t__ setbindhost (struct addrinfo**,char*,struct addrinfo) ;
 int setproctitle (char*) ;
 scalar_t__ setsockopt (int,int ,int ,...) ;
 int signal (int ,int ) ;
 int socket (void*,void*,void*) ;
 scalar_t__ stablefd ;
 int start_server (int,struct nfsd_nfsd_args*,char const*) ;
 int strcmp (char const*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int syslog (int ,char*,...) ;
 int unregistration () ;
 int usage () ;
 int warnx (char*,...) ;

int
main(int argc, char **argv)
{
 struct nfsd_addsock_args addsockargs;
 struct addrinfo *ai_udp, *ai_tcp, *ai_udp6, *ai_tcp6, hints;
 struct netconfig *nconf_udp, *nconf_tcp, *nconf_udp6, *nconf_tcp6;
 struct netbuf nb_udp, nb_tcp, nb_udp6, nb_tcp6;
 struct sockaddr_storage peer;
 fd_set ready, sockbits;
 int ch, connect_type_cnt, i, maxsock, msgsock;
 socklen_t len;
 int on = 1, unregister, reregister, sock;
 int tcp6sock, ip6flag, tcpflag, tcpsock;
 int udpflag, ecode, error, s;
 int bindhostc, bindanyflag, rpcbreg, rpcbregcnt;
 int nfssvc_addsock;
 int longindex = 0;
 int nfs_minvers = NFS_VER2;
 size_t nfs_minvers_size;
 const char *lopt;
 char **bindhost = ((void*)0);
 pid_t pid;
 struct nfsd_nfsd_args nfsdargs;
 const char *vhostname = ((void*)0);

 nfsdargs.mirrorcnt = 1;
 nfsdargs.addr = ((void*)0);
 nfsdargs.addrlen = 0;
 nfsdcnt = DEFNFSDCNT;
 unregister = reregister = tcpflag = maxsock = 0;
 bindanyflag = udpflag = connect_type_cnt = bindhostc = 0;
 getopt_shortopts = "ah:n:rdtuep:m:V:";
 getopt_usage =
     "usage:\n"
     "  nfsd [-ardtue] [-h bindip]\n"
     "       [-n numservers] [--minthreads #] [--maxthreads #]\n"
     "       [-p/--pnfs dsserver0:/dsserver0-mounted-on-dir,...,"
     "dsserverN:/dsserverN-mounted-on-dir] [-m mirrorlevel]\n"
     "       [-V virtual_hostname]\n";
 while ((ch = getopt_long(argc, argv, getopt_shortopts, longopts,
      &longindex)) != -1)
  switch (ch) {
  case 'V':
   if (strlen(optarg) <= MAXHOSTNAMELEN)
    vhostname = optarg;
   else
    warnx("Virtual host name (%s) is too long",
        optarg);
   break;
  case 'a':
   bindanyflag = 1;
   break;
  case 'n':
   set_nfsdcnt(atoi(optarg));
   break;
  case 'h':
   bindhostc++;
   bindhost = realloc(bindhost,sizeof(char *)*bindhostc);
   if (bindhost == ((void*)0))
    errx(1, "Out of memory");
   bindhost[bindhostc-1] = strdup(optarg);
   if (bindhost[bindhostc-1] == ((void*)0))
    errx(1, "Out of memory");
   break;
  case 'r':
   reregister = 1;
   break;
  case 'd':
   unregister = 1;
   break;
  case 't':
   tcpflag = 1;
   break;
  case 'u':
   udpflag = 1;
   break;
  case 'e':

   break;
  case 'p':

   parse_dsserver(optarg, &nfsdargs);
   break;
  case 'm':

   i = atoi(optarg);
   if (i < 2 || i > NFSDEV_MAXMIRRORS)
    errx(1, "Mirror level out of range 2<-->%d",
        NFSDEV_MAXMIRRORS);
   nfsdargs.mirrorcnt = i;
   break;
  case 0:
   lopt = longopts[longindex].name;
   if (!strcmp(lopt, "minthreads")) {
    minthreads = atoi(optarg);
   } else if (!strcmp(lopt, "maxthreads")) {
    maxthreads = atoi(optarg);
   }
   break;
  default:
  case '?':
   usage();
  }
 if (!tcpflag && !udpflag)
  udpflag = 1;
 argv += optind;
 argc -= optind;
 if (minthreads_set && maxthreads_set && minthreads > maxthreads)
  errx(EX_USAGE,
      "error: minthreads(%d) can't be greater than "
      "maxthreads(%d)", minthreads, maxthreads);





 if (argc > 1)
  usage();
 if (argc == 1)
  set_nfsdcnt(atoi(argv[0]));





 if (modfind("nfsd") < 0) {

  if (kldload("nfsd") < 0 || modfind("nfsd") < 0)
   errx(1, "NFS server is not available");
 }

 ip6flag = 1;
 s = socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP);
 if (s == -1) {
  if (errno != EPROTONOSUPPORT && errno != EAFNOSUPPORT)
   err(1, "socket");
  ip6flag = 0;
 } else if (getnetconfigent("udp6") == ((void*)0) ||
  getnetconfigent("tcp6") == ((void*)0)) {
  ip6flag = 0;
 }
 if (s != -1)
  close(s);

 if (bindhostc == 0 || bindanyflag) {
  bindhostc++;
  bindhost = realloc(bindhost,sizeof(char *)*bindhostc);
  if (bindhost == ((void*)0))
   errx(1, "Out of memory");
  bindhost[bindhostc-1] = strdup("*");
  if (bindhost[bindhostc-1] == ((void*)0))
   errx(1, "Out of memory");
 }

 nfs_minvers_size = sizeof(nfs_minvers);
 error = sysctlbyname("vfs.nfsd.server_min_nfsvers", &nfs_minvers,
     &nfs_minvers_size, ((void*)0), 0);
 if (error != 0 || nfs_minvers < NFS_VER2 || nfs_minvers > NFS_VER4) {
  warnx("sysctlbyname(vfs.nfsd.server_min_nfsvers) failed,"
      " defaulting to NFSv2");
  nfs_minvers = NFS_VER2;
 }

 if (unregister) {
  unregistration();
  exit (0);
 }
 if (reregister) {
  if (udpflag) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET;
   hints.ai_socktype = SOCK_DGRAM;
   hints.ai_protocol = IPPROTO_UDP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_udp);
   if (ecode != 0)
    err(1, "getaddrinfo udp: %s", gai_strerror(ecode));
   nconf_udp = getnetconfigent("udp");
   if (nconf_udp == ((void*)0))
    err(1, "getnetconfigent udp failed");
   nb_udp.buf = ai_udp->ai_addr;
   nb_udp.len = nb_udp.maxlen = ai_udp->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_udp,
        &nb_udp))
     err(1, "rpcb_set udp failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_udp,
        &nb_udp))
     err(1, "rpcb_set udp failed");
   freeaddrinfo(ai_udp);
  }
  if (udpflag && ip6flag) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET6;
   hints.ai_socktype = SOCK_DGRAM;
   hints.ai_protocol = IPPROTO_UDP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_udp6);
   if (ecode != 0)
    err(1, "getaddrinfo udp6: %s", gai_strerror(ecode));
   nconf_udp6 = getnetconfigent("udp6");
   if (nconf_udp6 == ((void*)0))
    err(1, "getnetconfigent udp6 failed");
   nb_udp6.buf = ai_udp6->ai_addr;
   nb_udp6.len = nb_udp6.maxlen = ai_udp6->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_udp6,
        &nb_udp6))
     err(1, "rpcb_set udp6 failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_udp6,
        &nb_udp6))
     err(1, "rpcb_set udp6 failed");
   freeaddrinfo(ai_udp6);
  }
  if (tcpflag) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_tcp);
   if (ecode != 0)
    err(1, "getaddrinfo tcp: %s", gai_strerror(ecode));
   nconf_tcp = getnetconfigent("tcp");
   if (nconf_tcp == ((void*)0))
    err(1, "getnetconfigent tcp failed");
   nb_tcp.buf = ai_tcp->ai_addr;
   nb_tcp.len = nb_tcp.maxlen = ai_tcp->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_tcp,
        &nb_tcp))
     err(1, "rpcb_set tcp failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_tcp,
        &nb_tcp))
     err(1, "rpcb_set tcp failed");
   freeaddrinfo(ai_tcp);
  }
  if (tcpflag && ip6flag) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET6;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_tcp6);
   if (ecode != 0)
    err(1, "getaddrinfo tcp6: %s", gai_strerror(ecode));
   nconf_tcp6 = getnetconfigent("tcp6");
   if (nconf_tcp6 == ((void*)0))
    err(1, "getnetconfigent tcp6 failed");
   nb_tcp6.buf = ai_tcp6->ai_addr;
   nb_tcp6.len = nb_tcp6.maxlen = ai_tcp6->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_tcp6,
        &nb_tcp6))
     err(1, "rpcb_set tcp6 failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_tcp6,
       &nb_tcp6))
     err(1, "rpcb_set tcp6 failed");
   freeaddrinfo(ai_tcp6);
  }
  exit (0);
 }
 if (debug == 0) {
  daemon(0, 0);
  (void)signal(SIGHUP, SIG_IGN);
  (void)signal(SIGINT, SIG_IGN);






  (void)signal(SIGTERM, SIG_IGN);
  (void)signal(SIGQUIT, SIG_IGN);
 }
 (void)signal(SIGSYS, nonfs);
 (void)signal(SIGCHLD, reapchild);
 (void)signal(SIGUSR2, backup_stable);

 openlog("nfsd", LOG_PID | (debug ? LOG_PERROR : 0), LOG_DAEMON);
 open_stable(&stablefd, &backupfd);
 if (stablefd < 0) {
  syslog(LOG_ERR, "Can't open %s: %m\n", NFSD_STABLERESTART);
  exit(1);
 }

 nfssvc(NFSSVC_BACKUPSTABLE, ((void*)0));
 if (nfssvc(NFSSVC_STABLERESTART, (caddr_t)&stablefd) < 0) {
  syslog(LOG_ERR, "Can't read stable storage file: %m\n");
  exit(1);
 }
 nfssvc_addsock = NFSSVC_NFSDADDSOCK;
 nfssvc_nfsd = NFSSVC_NFSDNFSD | NFSSVC_NEWSTRUCT;

 if (tcpflag) {





  masterpid = getpid();
  pid = fork();
  if (pid == -1) {
   syslog(LOG_ERR, "fork: %m");
   nfsd_exit(1);
  }
  if (pid) {
   children[0] = pid;
  } else {
   (void)signal(SIGUSR1, child_cleanup);
   setproctitle("server");
   start_server(0, &nfsdargs, vhostname);
  }
 }

 (void)signal(SIGUSR1, cleanup);
 FD_ZERO(&sockbits);

 rpcbregcnt = 0;

 if (udpflag) {
  rpcbreg = 0;
  for (i = 0; i < bindhostc; i++) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET;
   hints.ai_socktype = SOCK_DGRAM;
   hints.ai_protocol = IPPROTO_UDP;
   if (setbindhost(&ai_udp, bindhost[i], hints) == 0) {
    rpcbreg = 1;
    rpcbregcnt++;
    if ((sock = socket(ai_udp->ai_family,
        ai_udp->ai_socktype,
        ai_udp->ai_protocol)) < 0) {
     syslog(LOG_ERR,
         "can't create udp socket");
     nfsd_exit(1);
    }
    if (bind(sock, ai_udp->ai_addr,
        ai_udp->ai_addrlen) < 0) {
     syslog(LOG_ERR,
         "can't bind udp addr %s: %m",
         bindhost[i]);
     nfsd_exit(1);
    }
    freeaddrinfo(ai_udp);
    addsockargs.sock = sock;
    addsockargs.name = ((void*)0);
    addsockargs.namelen = 0;
    if (nfssvc(nfssvc_addsock, &addsockargs) < 0) {
     syslog(LOG_ERR, "can't Add UDP socket");
     nfsd_exit(1);
    }
    (void)close(sock);
   }
  }
  if (rpcbreg == 1) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET;
   hints.ai_socktype = SOCK_DGRAM;
   hints.ai_protocol = IPPROTO_UDP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_udp);
   if (ecode != 0) {
    syslog(LOG_ERR, "getaddrinfo udp: %s",
       gai_strerror(ecode));
    nfsd_exit(1);
   }
   nconf_udp = getnetconfigent("udp");
   if (nconf_udp == ((void*)0))
    err(1, "getnetconfigent udp failed");
   nb_udp.buf = ai_udp->ai_addr;
   nb_udp.len = nb_udp.maxlen = ai_udp->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_udp,
        &nb_udp))
     err(1, "rpcb_set udp failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_udp,
        &nb_udp))
     err(1, "rpcb_set udp failed");
   freeaddrinfo(ai_udp);
  }
 }


 if (udpflag && ip6flag) {
  rpcbreg = 0;
  for (i = 0; i < bindhostc; i++) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET6;
   hints.ai_socktype = SOCK_DGRAM;
   hints.ai_protocol = IPPROTO_UDP;
   if (setbindhost(&ai_udp6, bindhost[i], hints) == 0) {
    rpcbreg = 1;
    rpcbregcnt++;
    if ((sock = socket(ai_udp6->ai_family,
        ai_udp6->ai_socktype,
        ai_udp6->ai_protocol)) < 0) {
     syslog(LOG_ERR,
      "can't create udp6 socket");
     nfsd_exit(1);
    }
    if (setsockopt(sock, IPPROTO_IPV6, IPV6_V6ONLY,
        &on, sizeof on) < 0) {
     syslog(LOG_ERR,
         "can't set v6-only binding for "
         "udp6 socket: %m");
     nfsd_exit(1);
    }
    if (bind(sock, ai_udp6->ai_addr,
        ai_udp6->ai_addrlen) < 0) {
     syslog(LOG_ERR,
         "can't bind udp6 addr %s: %m",
         bindhost[i]);
     nfsd_exit(1);
    }
    freeaddrinfo(ai_udp6);
    addsockargs.sock = sock;
    addsockargs.name = ((void*)0);
    addsockargs.namelen = 0;
    if (nfssvc(nfssvc_addsock, &addsockargs) < 0) {
     syslog(LOG_ERR,
         "can't add UDP6 socket");
     nfsd_exit(1);
    }
    (void)close(sock);
   }
  }
  if (rpcbreg == 1) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET6;
   hints.ai_socktype = SOCK_DGRAM;
   hints.ai_protocol = IPPROTO_UDP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_udp6);
   if (ecode != 0) {
    syslog(LOG_ERR, "getaddrinfo udp6: %s",
       gai_strerror(ecode));
    nfsd_exit(1);
   }
   nconf_udp6 = getnetconfigent("udp6");
   if (nconf_udp6 == ((void*)0))
    err(1, "getnetconfigent udp6 failed");
   nb_udp6.buf = ai_udp6->ai_addr;
   nb_udp6.len = nb_udp6.maxlen = ai_udp6->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_udp6,
        &nb_udp6))
     err(1,
         "rpcb_set udp6 failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_udp6,
        &nb_udp6))
     err(1,
         "rpcb_set udp6 failed");
   freeaddrinfo(ai_udp6);
  }
 }


 if (tcpflag) {
  rpcbreg = 0;
  for (i = 0; i < bindhostc; i++) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;
   if (setbindhost(&ai_tcp, bindhost[i], hints) == 0) {
    rpcbreg = 1;
    rpcbregcnt++;
    if ((tcpsock = socket(AF_INET, SOCK_STREAM,
        0)) < 0) {
     syslog(LOG_ERR,
         "can't create tcp socket");
     nfsd_exit(1);
    }
    if (setsockopt(tcpsock, SOL_SOCKET,
        SO_REUSEADDR,
        (char *)&on, sizeof(on)) < 0)
     syslog(LOG_ERR,
          "setsockopt SO_REUSEADDR: %m");
    if (bind(tcpsock, ai_tcp->ai_addr,
        ai_tcp->ai_addrlen) < 0) {
     syslog(LOG_ERR,
         "can't bind tcp addr %s: %m",
         bindhost[i]);
     nfsd_exit(1);
    }
    if (listen(tcpsock, -1) < 0) {
     syslog(LOG_ERR, "listen failed");
     nfsd_exit(1);
    }
    freeaddrinfo(ai_tcp);
    FD_SET(tcpsock, &sockbits);
    maxsock = tcpsock;
    connect_type_cnt++;
   }
  }
  if (rpcbreg == 1) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints,
        &ai_tcp);
   if (ecode != 0) {
    syslog(LOG_ERR, "getaddrinfo tcp: %s",
       gai_strerror(ecode));
    nfsd_exit(1);
   }
   nconf_tcp = getnetconfigent("tcp");
   if (nconf_tcp == ((void*)0))
    err(1, "getnetconfigent tcp failed");
   nb_tcp.buf = ai_tcp->ai_addr;
   nb_tcp.len = nb_tcp.maxlen = ai_tcp->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_tcp,
        &nb_tcp))
     err(1, "rpcb_set tcp failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_tcp,
        &nb_tcp))
     err(1, "rpcb_set tcp failed");
   freeaddrinfo(ai_tcp);
  }
 }


 if (tcpflag && ip6flag) {
  rpcbreg = 0;
  for (i = 0; i < bindhostc; i++) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET6;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;
   if (setbindhost(&ai_tcp6, bindhost[i], hints) == 0) {
    rpcbreg = 1;
    rpcbregcnt++;
    if ((tcp6sock = socket(ai_tcp6->ai_family,
        ai_tcp6->ai_socktype,
        ai_tcp6->ai_protocol)) < 0) {
     syslog(LOG_ERR,
         "can't create tcp6 socket");
     nfsd_exit(1);
    }
    if (setsockopt(tcp6sock, SOL_SOCKET,
        SO_REUSEADDR,
        (char *)&on, sizeof(on)) < 0)
     syslog(LOG_ERR,
         "setsockopt SO_REUSEADDR: %m");
    if (setsockopt(tcp6sock, IPPROTO_IPV6,
        IPV6_V6ONLY, &on, sizeof on) < 0) {
     syslog(LOG_ERR,
     "can't set v6-only binding for tcp6 "
         "socket: %m");
     nfsd_exit(1);
    }
    if (bind(tcp6sock, ai_tcp6->ai_addr,
        ai_tcp6->ai_addrlen) < 0) {
     syslog(LOG_ERR,
         "can't bind tcp6 addr %s: %m",
         bindhost[i]);
     nfsd_exit(1);
    }
    if (listen(tcp6sock, -1) < 0) {
     syslog(LOG_ERR, "listen failed");
     nfsd_exit(1);
    }
    freeaddrinfo(ai_tcp6);
    FD_SET(tcp6sock, &sockbits);
    if (maxsock < tcp6sock)
     maxsock = tcp6sock;
    connect_type_cnt++;
   }
  }
  if (rpcbreg == 1) {
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = AF_INET6;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;
   ecode = getaddrinfo(((void*)0), "nfs", &hints, &ai_tcp6);
   if (ecode != 0) {
    syslog(LOG_ERR, "getaddrinfo tcp6: %s",
       gai_strerror(ecode));
    nfsd_exit(1);
   }
   nconf_tcp6 = getnetconfigent("tcp6");
   if (nconf_tcp6 == ((void*)0))
    err(1, "getnetconfigent tcp6 failed");
   nb_tcp6.buf = ai_tcp6->ai_addr;
   nb_tcp6.len = nb_tcp6.maxlen = ai_tcp6->ai_addrlen;
   if (nfs_minvers == NFS_VER2)
    if (!rpcb_set(NFS_PROGRAM, 2, nconf_tcp6,
        &nb_tcp6))
     err(1, "rpcb_set tcp6 failed");
   if (nfs_minvers <= NFS_VER3)
    if (!rpcb_set(NFS_PROGRAM, 3, nconf_tcp6,
        &nb_tcp6))
     err(1, "rpcb_set tcp6 failed");
   freeaddrinfo(ai_tcp6);
  }
 }

 if (rpcbregcnt == 0) {
  syslog(LOG_ERR, "rpcb_set() failed, nothing to do: %m");
  nfsd_exit(1);
 }

 if (tcpflag && connect_type_cnt == 0) {
  syslog(LOG_ERR, "tcp connects == 0, nothing to do: %m");
  nfsd_exit(1);
 }

 setproctitle("master");







 if (!tcpflag)
  start_server(1, &nfsdargs, vhostname);





 for (;;) {
  ready = sockbits;
  if (connect_type_cnt > 1) {
   if (select(maxsock + 1,
       &ready, ((void*)0), ((void*)0), ((void*)0)) < 1) {
    error = errno;
    if (error == EINTR)
     continue;
    syslog(LOG_ERR, "select failed: %m");
    nfsd_exit(1);
   }
  }
  for (tcpsock = 0; tcpsock <= maxsock; tcpsock++) {
   if (FD_ISSET(tcpsock, &ready)) {
    len = sizeof(peer);
    if ((msgsock = accept(tcpsock,
        (struct sockaddr *)&peer, &len)) < 0) {
     error = errno;
     syslog(LOG_ERR, "accept failed: %m");
     if (error == ECONNABORTED ||
         error == EINTR)
      continue;
     nfsd_exit(1);
    }
    if (setsockopt(msgsock, SOL_SOCKET,
        SO_KEEPALIVE, (char *)&on, sizeof(on)) < 0)
     syslog(LOG_ERR,
         "setsockopt SO_KEEPALIVE: %m");
    addsockargs.sock = msgsock;
    addsockargs.name = (caddr_t)&peer;
    addsockargs.namelen = len;
    nfssvc(nfssvc_addsock, &addsockargs);
    (void)close(msgsock);
   }
  }
 }
}
