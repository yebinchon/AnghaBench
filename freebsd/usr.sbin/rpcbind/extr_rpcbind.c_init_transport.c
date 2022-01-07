
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct netbuf {int len; int maxlen; struct sockaddr* buf; } ;
struct t_bind {struct netbuf addr; } ;
struct sockaddr_un {int ai_family; int ai_addrlen; scalar_t__ ai_addr; int ai_flags; int ai_protocol; int ai_socktype; int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int sa_len; } ;
typedef char pmaplist ;
struct netconfig {scalar_t__ nc_semantics; char* nc_netid; int nc_nlookups; char** nc_lookups; char* nc_protofmly; char* nc_proto; } ;
struct addrinfo {int ai_family; int ai_addrlen; scalar_t__ ai_addr; int ai_flags; int ai_protocol; int ai_socktype; int sun_len; int sun_path; int sun_family; } ;
struct __rpc_sockinfo {int si_af; int si_proto; int si_socktype; } ;
typedef int mode_t ;
struct TYPE_2__ {void* pm_vers; void* pm_prot; int pm_port; int pm_prog; } ;
typedef int SVCXPRT ;




 int AF_LOCAL ;
 int AI_NUMERICHOST ;
 int AI_PASSIVE ;
 scalar_t__ EAFNOSUPPORT ;
 int IPPROTO_IPV6 ;
 void* IPPROTO_ST ;
 void* IPPROTO_TCP ;
 void* IPPROTO_UDP ;
 int IPV6_V6ONLY ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 char* NC_INET ;
 char* NC_TCP ;
 scalar_t__ NC_TPI_CLTS ;
 scalar_t__ NC_TPI_COTS ;
 scalar_t__ NC_TPI_COTS_ORD ;
 char* NC_UDP ;
 int PMAPPORT ;
 int PMAPPROG ;
 void* PMAPVERS ;
 int RPCBPROG ;
 void* RPCBVERS ;
 void* RPCBVERS4 ;
 int RPC_MAXDATASIZE ;
 int SOMAXCONN ;
 int SUN_LEN (struct sockaddr_un*) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int _PATH_RPCBINDSOCK ;
 int __rpc_nconf2fd (struct netconfig*) ;
 int __rpc_nconf2sockinfo (struct netconfig*,struct __rpc_sockinfo*) ;
 int add_bndlist (struct netconfig*,struct netbuf*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int create_rmtcall_fd (struct netconfig*) ;
 scalar_t__ debugging ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int freeaddrinfo (struct sockaddr_un*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int ,struct sockaddr_un*,struct sockaddr_un**) ;
 char** hosts ;
 int inet_pton (int const,char*,int *) ;
 char* list_pml ;
 int listen (int,int ) ;
 void* malloc (int) ;
 int memcpy (struct sockaddr*,struct sockaddr*,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int nhosts ;
 int on ;
 int pmap_service ;
 int rbllist_add (int ,void*,struct netconfig*,struct netbuf*) ;
 char** realloc (char**,int) ;
 int rpcb_service_3 ;
 int rpcb_service_4 ;
 int servname ;
 int setsockopt (int,int ,int ,int *,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (int ,int ) ;
 void* strdup (char*) ;
 int svc_reg (int *,int ,void*,int ,int *) ;
 int svc_register (int *,int ,void*,int ,int ) ;
 scalar_t__ svc_tli_create (int,struct netconfig*,struct t_bind*,int ,int ) ;
 int syslog (int ,char*,...) ;
 void* taddr2uaddr (struct netconfig*,struct netbuf*) ;
 void* tcp_uaddr ;
 scalar_t__* tcptrans ;
 void* udp_uaddr ;
 scalar_t__* udptrans ;
 int umask (int) ;
 int unlink (int ) ;

__attribute__((used)) static int
init_transport(struct netconfig *nconf)
{
 int fd;
 struct t_bind taddr;
 struct addrinfo hints, *res = ((void*)0);
 struct __rpc_sockinfo si;
 SVCXPRT *my_xprt;
 int status;
 int aicode;
 int addrlen;
 int nhostsbak;
 int bound;
 struct sockaddr *sa;
 u_int32_t host_addr[4];
 struct sockaddr_un sun;
 mode_t oldmask;

 if ((nconf->nc_semantics != NC_TPI_CLTS) &&
     (nconf->nc_semantics != NC_TPI_COTS) &&
     (nconf->nc_semantics != NC_TPI_COTS_ORD))
     return (1);
 if ((strcmp(nconf->nc_netid, "local") == 0) ||
     (strcmp(nconf->nc_netid, "unix") == 0)) {




     if ((fd = __rpc_nconf2fd(nconf)) < 0) {
  int non_fatal = 0;
  if (errno == EAFNOSUPPORT)
      non_fatal = 1;
  syslog(non_fatal?LOG_DEBUG:LOG_ERR, "cannot create socket for %s",
      nconf->nc_netid);
  return (1);
     }
 }

 if (!__rpc_nconf2sockinfo(nconf, &si)) {
     syslog(LOG_ERR, "cannot get information for %s",
  nconf->nc_netid);
     return (1);
 }

 if ((strcmp(nconf->nc_netid, "local") == 0) ||
     (strcmp(nconf->nc_netid, "unix") == 0)) {
     memset(&sun, 0, sizeof sun);
     sun.sun_family = AF_LOCAL;
     unlink(_PATH_RPCBINDSOCK);
     strcpy(sun.sun_path, _PATH_RPCBINDSOCK);
     sun.sun_len = SUN_LEN(&sun);
     addrlen = sizeof (struct sockaddr_un);
     sa = (struct sockaddr *)&sun;
 } else {


     memset(&hints, 0, sizeof hints);
     hints.ai_flags = AI_PASSIVE;
     hints.ai_family = si.si_af;
     hints.ai_socktype = si.si_socktype;
     hints.ai_protocol = si.si_proto;
 }

 if ((strcmp(nconf->nc_netid, "local") != 0) &&
     (strcmp(nconf->nc_netid, "unix") != 0)) {




     nhostsbak = nhosts + 1;
     hosts = realloc(hosts, nhostsbak * sizeof(char *));
     if (nhostsbak == 1)
         hosts[0] = "*";
     else {
  if (hints.ai_family == 129) {
      hosts[nhostsbak - 1] = "127.0.0.1";
  } else if (hints.ai_family == 128) {
      hosts[nhostsbak - 1] = "::1";
  } else
      return 1;
     }




     bound = 0;
     while (nhostsbak > 0) {
  --nhostsbak;



  if ((fd = __rpc_nconf2fd(nconf)) < 0) {
      int non_fatal = 0;
      if (errno == EAFNOSUPPORT &&
   nconf->nc_semantics != NC_TPI_CLTS)
   non_fatal = 1;
      syslog(non_fatal ? LOG_DEBUG : LOG_ERR,
   "cannot create socket for %s", nconf->nc_netid);
      return (1);
  }
  switch (hints.ai_family) {
  case 129:
      if (inet_pton(129, hosts[nhostsbak],
   host_addr) == 1) {
   hints.ai_flags &= AI_NUMERICHOST;
      } else {



   if (inet_pton(128,
       hosts[nhostsbak], host_addr) == 1) {
       close(fd);
       continue;
   }
      }
      break;
  case 128:
      if (inet_pton(128, hosts[nhostsbak],
   host_addr) == 1) {
   hints.ai_flags &= AI_NUMERICHOST;
      } else {



   if (inet_pton(129, hosts[nhostsbak],
       host_addr) == 1) {
    close(fd);
    continue;
   }
      }
      if (setsockopt(fd, IPPROTO_IPV6,
   IPV6_V6ONLY, &on, sizeof on) < 0) {
   syslog(LOG_ERR,
       "can't set v6-only binding for "
       "ipv6 socket: %m");
   continue;
      }
      break;
  default:
      break;
  }




  if (strcmp("*", hosts[nhostsbak]) == 0)
      hosts[nhostsbak] = ((void*)0);
  if ((strcmp(nconf->nc_netid, "local") != 0) &&
      (strcmp(nconf->nc_netid, "unix") != 0)) {
      if ((aicode = getaddrinfo(hosts[nhostsbak],
   servname, &hints, &res)) != 0) {
   syslog(LOG_ERR,
       "cannot get local address for %s: %s",
       nconf->nc_netid, gai_strerror(aicode));
   continue;
      }
      addrlen = res->ai_addrlen;
      sa = (struct sockaddr *)res->ai_addr;
  }
  oldmask = umask(S_IXUSR|S_IXGRP|S_IXOTH);
  if (bind(fd, sa, addrlen) != 0) {
      syslog(LOG_ERR, "cannot bind %s on %s: %m",
   (hosts[nhostsbak] == ((void*)0)) ? "*" :
       hosts[nhostsbak], nconf->nc_netid);
      if (res != ((void*)0))
   freeaddrinfo(res);
      continue;
  } else
      bound = 1;
  (void)umask(oldmask);


  taddr.addr.len = taddr.addr.maxlen = addrlen;
  taddr.addr.buf = malloc(addrlen);
  if (taddr.addr.buf == ((void*)0)) {
      syslog(LOG_ERR,
   "cannot allocate memory for %s address",
   nconf->nc_netid);
      if (res != ((void*)0))
   freeaddrinfo(res);
      return 1;
  }
  memcpy(taddr.addr.buf, sa, addrlen);
  if (nconf->nc_semantics != NC_TPI_CLTS)
      listen(fd, SOMAXCONN);

  my_xprt = (SVCXPRT *)svc_tli_create(fd, nconf, &taddr,
      RPC_MAXDATASIZE, RPC_MAXDATASIZE);
  if (my_xprt == (SVCXPRT *)((void*)0)) {
      syslog(LOG_ERR, "%s: could not create service",
   nconf->nc_netid);
      goto error;
  }
     }
     if (!bound)
  return 1;
 } else {
     oldmask = umask(S_IXUSR|S_IXGRP|S_IXOTH);
     if (bind(fd, sa, addrlen) < 0) {
  syslog(LOG_ERR, "cannot bind %s: %m", nconf->nc_netid);
  if (res != ((void*)0))
      freeaddrinfo(res);
  return 1;
     }
     (void) umask(oldmask);


     taddr.addr.len = taddr.addr.maxlen = addrlen;
     taddr.addr.buf = malloc(addrlen);
     if (taddr.addr.buf == ((void*)0)) {
  syslog(LOG_ERR, "cannot allocate memory for %s address",
      nconf->nc_netid);
  if (res != ((void*)0))
      freeaddrinfo(res);
  return 1;
     }
     memcpy(taddr.addr.buf, sa, addrlen);
     if (nconf->nc_semantics != NC_TPI_CLTS)
  listen(fd, SOMAXCONN);

     my_xprt = (SVCXPRT *)svc_tli_create(fd, nconf, &taddr,
  RPC_MAXDATASIZE, RPC_MAXDATASIZE);
     if (my_xprt == (SVCXPRT *)((void*)0)) {
  syslog(LOG_ERR, "%s: could not create service",
      nconf->nc_netid);
  goto error;
     }
 }
 if (!svc_reg(my_xprt, RPCBPROG, RPCBVERS, rpcb_service_3, ((void*)0))) {
  syslog(LOG_ERR, "could not register %s version 3",
    nconf->nc_netid);
  goto error;
 }
 rbllist_add(RPCBPROG, RPCBVERS, nconf, &taddr.addr);


 if (!svc_reg(my_xprt, RPCBPROG, RPCBVERS4, rpcb_service_4, ((void*)0))) {
  syslog(LOG_ERR, "could not register %s version 4",
    nconf->nc_netid);
  goto error;
 }
 rbllist_add(RPCBPROG, RPCBVERS4, nconf, &taddr.addr);


 status = add_bndlist(nconf, &taddr.addr);
 if (nconf->nc_semantics == NC_TPI_CLTS) {
  status = create_rmtcall_fd(nconf);
 }
 return (0);
error:
 close(fd);
 return (1);
}
