
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sockaddr_in6 {int sin6_family; int sin6_addr; void* sin6_port; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; void* sin_port; } ;
struct sockaddr {int ai_family; struct sockaddr* ai_addr; int sa_len; void* ai_addrlen; int ai_protocol; int ai_flags; int ai_socktype; } ;
struct netconfig {scalar_t__ nc_semantics; int nc_netid; } ;
struct addrinfo {int ai_family; struct addrinfo* ai_addr; int sa_len; void* ai_addrlen; int ai_protocol; int ai_flags; int ai_socktype; } ;
struct __rpc_sockinfo {int si_af; int si_proto; int si_socktype; } ;
typedef void* socklen_t ;




 int AI_NUMERICHOST ;
 int AI_PASSIVE ;
 scalar_t__ EADDRINUSE ;
 int INADDR_ANY ;
 int LOG_ERR ;
 scalar_t__ NC_TPI_CLTS ;
 scalar_t__ NC_TPI_COTS ;
 scalar_t__ NC_TPI_COTS_ORD ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int __rpc_nconf2fd (struct netconfig*) ;
 int __rpc_nconf2sockinfo (struct netconfig*,struct __rpc_sockinfo*) ;
 int bindresvport_sa (int,struct sockaddr*) ;
 int close (int) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit (int) ;
 int free (struct sockaddr*) ;
 int freeaddrinfo (struct sockaddr*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,int *,struct sockaddr*,struct sockaddr**) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,int *,int ,int *,int,int) ;
 int ** hosts ;
 int htonl (int ) ;
 void* htons (int ) ;
 int in6addr_any ;
 int inet_pton (int const,int *,int *) ;
 void* malloc (int) ;
 int mallocd_svcport ;
 int memset (struct sockaddr*,int ,int) ;
 int nhosts ;
 int out_of_mem () ;
 int* realloc (int*,int) ;
 int* sock_fd ;
 int sock_fdcnt ;
 scalar_t__ strcmp (char*,int *) ;
 int * svcport_str ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
create_service(struct netconfig *nconf)
{
 struct addrinfo hints, *res = ((void*)0);
 struct sockaddr_in *sin;
 struct sockaddr_in6 *sin6;
 struct __rpc_sockinfo si;
 int aicode;
 int fd;
 int nhostsbak;
 int r;
 u_int32_t host_addr[4];
 int mallocd_res;

 if ((nconf->nc_semantics != NC_TPI_CLTS) &&
     (nconf->nc_semantics != NC_TPI_COTS) &&
     (nconf->nc_semantics != NC_TPI_COTS_ORD))
  return (1);




 if (!__rpc_nconf2sockinfo(nconf, &si)) {
  syslog(LOG_ERR, "cannot get information for %s",
      nconf->nc_netid);
  return (1);
 }


 memset(&hints, 0, sizeof hints);
 hints.ai_family = si.si_af;
 hints.ai_socktype = si.si_socktype;
 hints.ai_protocol = si.si_proto;




 nhostsbak = nhosts;
 while (nhostsbak > 0) {
  --nhostsbak;
  sock_fd = realloc(sock_fd, (sock_fdcnt + 1) * sizeof(int));
  if (sock_fd == ((void*)0))
   out_of_mem();
  sock_fd[sock_fdcnt++] = -1;
  mallocd_res = 0;
  hints.ai_flags = AI_PASSIVE;




  if ((fd = __rpc_nconf2fd(nconf)) < 0) {
   syslog(LOG_ERR, "cannot create socket for %s",
       nconf->nc_netid);
   continue;
  }
  switch (hints.ai_family) {
  case 129:
   if (inet_pton(129, hosts[nhostsbak],
       host_addr) == 1) {
    hints.ai_flags |= AI_NUMERICHOST;
   } else {



    if (inet_pton(128, hosts[nhostsbak],
        host_addr) == 1) {
     close(fd);
     continue;
    }
   }
   break;
  case 128:
   if (inet_pton(128, hosts[nhostsbak],
       host_addr) == 1) {
    hints.ai_flags |= AI_NUMERICHOST;
   } else {



    if (inet_pton(129, hosts[nhostsbak],
        host_addr) == 1) {
     close(fd);
     continue;
    }
   }
   break;
  default:
   break;
  }




  if (strcmp("*", hosts[nhostsbak]) == 0) {
   if (svcport_str == ((void*)0)) {
    res = malloc(sizeof(struct addrinfo));
    if (res == ((void*)0))
     out_of_mem();
    mallocd_res = 1;
    res->ai_flags = hints.ai_flags;
    res->ai_family = hints.ai_family;
    res->ai_protocol = hints.ai_protocol;
    switch (res->ai_family) {
    case 129:
     sin = malloc(sizeof(struct sockaddr_in));
     if (sin == ((void*)0))
      out_of_mem();
     sin->sin_family = 129;
     sin->sin_port = htons(0);
     sin->sin_addr.s_addr = htonl(INADDR_ANY);
     res->ai_addr = (struct sockaddr*) sin;
     res->ai_addrlen = (socklen_t)
         sizeof(struct sockaddr_in);
     break;
    case 128:
     sin6 = malloc(sizeof(struct sockaddr_in6));
     if (sin6 == ((void*)0))
      out_of_mem();
     sin6->sin6_family = 128;
     sin6->sin6_port = htons(0);
     sin6->sin6_addr = in6addr_any;
     res->ai_addr = (struct sockaddr*) sin6;
     res->ai_addrlen = (socklen_t)
         sizeof(struct sockaddr_in6);
     break;
    default:
     syslog(LOG_ERR, "bad addr fam %d",
         res->ai_family);
     exit(1);
    }
   } else {
    if ((aicode = getaddrinfo(((void*)0), svcport_str,
        &hints, &res)) != 0) {
     syslog(LOG_ERR,
         "cannot get local address for %s: %s",
         nconf->nc_netid,
         gai_strerror(aicode));
     close(fd);
     continue;
    }
   }
  } else {
   if ((aicode = getaddrinfo(hosts[nhostsbak], svcport_str,
       &hints, &res)) != 0) {
    syslog(LOG_ERR,
        "cannot get local address for %s: %s",
        nconf->nc_netid, gai_strerror(aicode));
    close(fd);
    continue;
   }
  }


  sock_fd[sock_fdcnt - 1] = fd;


  r = bindresvport_sa(fd, res->ai_addr);
  if (r != 0) {
   if (errno == EADDRINUSE && mallocd_svcport != 0) {
    if (mallocd_res != 0) {
     free(res->ai_addr);
     free(res);
    } else
     freeaddrinfo(res);
    return (-1);
   }
   syslog(LOG_ERR, "bindresvport_sa: %m");
   exit(1);
  }

  if (svcport_str == ((void*)0)) {
   svcport_str = malloc(NI_MAXSERV * sizeof(char));
   if (svcport_str == ((void*)0))
    out_of_mem();
   mallocd_svcport = 1;

   if (getnameinfo(res->ai_addr,
       res->ai_addr->sa_len, ((void*)0), NI_MAXHOST,
       svcport_str, NI_MAXSERV * sizeof(char),
       NI_NUMERICHOST | NI_NUMERICSERV))
    errx(1, "Cannot get port number");
  }
  if (mallocd_res != 0) {
   free(res->ai_addr);
   free(res);
  } else
   freeaddrinfo(res);
  res = ((void*)0);
 }
 return (0);
}
