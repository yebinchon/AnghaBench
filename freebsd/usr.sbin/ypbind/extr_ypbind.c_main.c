
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct dirent {char* d_name; } ;
struct _dom_binding {int dom_lockfd; int dom_default; struct _dom_binding* dom_pnext; scalar_t__ dom_alive; int dom_vers; int dom_domain; } ;
typedef int DIR ;


 char* BINDINGDIR ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int FD_ISSET (int ,int *) ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int LOCK_EX ;
 int LOCK_NB ;
 int LOG_DAEMON ;
 int LOG_PID ;
 int LOG_WARNING ;
 int MADV_PROTECT ;
 int MAXPATHLEN ;
 int MAX_CHILDREN ;
 int O_CREAT ;
 int O_RDONLY ;
 int READFD ;
 int RPC_ANYSOCK ;
 int SIGCHLD ;
 int SIGTERM ;
 int YPBINDLOCK ;
 int YPBINDPROG ;
 int YPBINDVERS ;
 scalar_t__ YPMAXDOMAIN ;
 int YPSET_ALL ;
 int YPSET_LOCAL ;
 int YPVERS ;
 int _rpc_dtablesize () ;
 int broadcast (struct _dom_binding*) ;
 int bzero (struct _dom_binding*,int) ;
 int checkwork () ;
 int children ;
 int closedir (int *) ;
 scalar_t__ daemon (int ,int ) ;
 char* domain_name ;
 int domains ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fdsr ;
 int flock (int,int) ;
 int getpid () ;
 int handle_children (struct _dom_binding*) ;
 scalar_t__ madvise (int *,int ,int ) ;
 struct _dom_binding* malloc (int) ;
 int open (int ,int,int) ;
 int * opendir (char*) ;
 int openlog (char*,int ,int ) ;
 int pmap_unset (int ,int ) ;
 int ppid ;
 struct dirent* readdir (int *) ;
 int reaper ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 int signal (int ,int ) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strlen (char*) ;
 int svc_fdset ;
 int svc_getreqset (int *) ;
 int svc_register (int *,int ,int ,int ,int ) ;
 int * svctcp_create (int ,int ,int ) ;
 int * svcudp_create (int ) ;
 int syslog (int ,char*) ;
 int * tcptransp ;
 int terminate ;
 int * udptransp ;
 int unlink (char*) ;
 int warnx (char*,char*) ;
 int yp_get_default_domain (char**) ;
 int yp_manycast ;
 int yp_restricted_mode (char*) ;
 struct _dom_binding* ypbindlist ;
 int ypbindprog_2 ;
 int yplockfd ;
 int ypsecuremode ;
 int ypsetmode ;

int
main(int argc, char *argv[])
{
 struct timeval tv;
 int i;
 DIR *dird;
 struct dirent *dirp;
 struct _dom_binding *ypdb, *next;


 if ((yplockfd = (open(YPBINDLOCK, O_RDONLY|O_CREAT, 0444))) == -1)
  err(1, "%s", YPBINDLOCK);

 if (flock(yplockfd, LOCK_EX|LOCK_NB) == -1 && errno == EWOULDBLOCK)
  errx(1, "another ypbind is already running. Aborting");


 yp_get_default_domain(&domain_name);
 if (domain_name[0] == '\0')
  errx(1, "domainname not set. Aborting");

 for (i = 1; i<argc; i++) {
  if (strcmp("-ypset", argv[i]) == 0)
   ypsetmode = YPSET_ALL;
  else if (strcmp("-ypsetme", argv[i]) == 0)
          ypsetmode = YPSET_LOCAL;
  else if (strcmp("-s", argv[i]) == 0)
          ypsecuremode++;
  else if (strcmp("-S", argv[i]) == 0 && argc > i)
   yp_restricted_mode(argv[++i]);
  else if (strcmp("-m", argv[i]) == 0)
   yp_manycast++;
  else
   errx(1, "unknown option: %s", argv[i]);
 }

 if (strlen(domain_name) > YPMAXDOMAIN)
  warnx("truncating domain name %s", domain_name);



 if ((dird = opendir(BINDINGDIR)) != ((void*)0)) {
  char path[MAXPATHLEN];
  while ((dirp = readdir(dird)) != ((void*)0))
   if (strcmp(dirp->d_name, ".") &&
       strcmp(dirp->d_name, "..")) {
    sprintf(path,"%s/%s",BINDINGDIR,dirp->d_name);
    unlink(path);
   }
  closedir(dird);
 }






 pmap_unset(YPBINDPROG, YPBINDVERS);

 udptransp = svcudp_create(RPC_ANYSOCK);
 if (udptransp == ((void*)0))
  errx(1, "cannot create udp service");
 if (!svc_register(udptransp, YPBINDPROG, YPBINDVERS, ypbindprog_2,
     IPPROTO_UDP))
  errx(1, "unable to register (YPBINDPROG, YPBINDVERS, udp)");

 tcptransp = svctcp_create(RPC_ANYSOCK, 0, 0);
 if (tcptransp == ((void*)0))
  errx(1, "cannot create tcp service");

 if (!svc_register(tcptransp, YPBINDPROG, YPBINDVERS, ypbindprog_2,
     IPPROTO_TCP))
  errx(1, "unable to register (YPBINDPROG, YPBINDVERS, tcp)");


 ypbindlist = malloc(sizeof *ypbindlist);
 if (ypbindlist == ((void*)0))
  errx(1, "malloc");
 bzero(ypbindlist, sizeof *ypbindlist);
 strlcpy(ypbindlist->dom_domain, domain_name, sizeof ypbindlist->dom_domain);
 ypbindlist->dom_vers = YPVERS;
 ypbindlist->dom_alive = 0;
 ypbindlist->dom_lockfd = -1;
 ypbindlist->dom_default = 1;
 domains++;

 signal(SIGCHLD, reaper);
 signal(SIGTERM, terminate);

 ppid = getpid();

 openlog(argv[0], LOG_PID, LOG_DAEMON);

 if (madvise(((void*)0), 0, MADV_PROTECT) != 0)
  syslog(LOG_WARNING, "madvise(): %m");


 broadcast(ypbindlist);

 while (1) {
  fdsr = svc_fdset;

  tv.tv_sec = 60;
  tv.tv_usec = 0;

  switch (select(_rpc_dtablesize(), &fdsr, ((void*)0), ((void*)0), &tv)) {
  case 0:
   checkwork();
   break;
  case -1:
   if (errno != EINTR)
    syslog(LOG_WARNING, "select: %m");
   break;
  default:
   for (ypdb = ypbindlist; ypdb; ypdb = next) {
    next = ypdb->dom_pnext;
    if (READFD > 0 && FD_ISSET(READFD, &fdsr)) {
     handle_children(ypdb);
     if (children == (MAX_CHILDREN - 1))
      checkwork();
    }
   }
   svc_getreqset(&fdsr);
   break;
  }
 }


 exit(1);
}
