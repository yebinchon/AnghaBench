
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {scalar_t__ nc_semantics; int nc_netid; } ;
struct netbuf {int len; int buf; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; int ai_flags; } ;
struct __rpc_sockinfo {int si_proto; int si_socktype; int si_af; } ;
typedef int SVCXPRT ;


 int AI_PASSIVE ;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ NC_TPI_CLTS ;
 scalar_t__ NC_TPI_COTS ;
 scalar_t__ NC_TPI_COTS_ORD ;
 int NLM_PROG ;
 int NLM_SM ;
 int NLM_VERS ;
 int NLM_VERS4 ;
 int NLM_VERSX ;
 int RPC_MAXDATASIZE ;
 int SOMAXCONN ;
 int __rpc_nconf2sockinfo (struct netconfig*,struct __rpc_sockinfo*) ;
 int exit (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 int listen (int,int ) ;
 int malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int nhosts ;
 int nlm_prog_0 ;
 int nlm_prog_1 ;
 int nlm_prog_3 ;
 int nlm_prog_4 ;
 int rpcb_set (int ,int ,struct netconfig*,struct netbuf*) ;
 int* sock_fd ;
 scalar_t__ sock_fdcnt ;
 scalar_t__ sock_fdpos ;
 int svc_reg (int *,int ,int ,int ,int *) ;
 int * svc_tli_create (int,struct netconfig*,int *,int ,int ) ;
 int syslog (int ,char*,...) ;
 int xcreated ;

__attribute__((used)) static void
complete_service(struct netconfig *nconf, char *port_str)
{
 struct addrinfo hints, *res = ((void*)0);
 struct __rpc_sockinfo si;
 struct netbuf servaddr;
 SVCXPRT *transp = ((void*)0);
 int aicode, fd, nhostsbak;
 int registered = 0;

 if ((nconf->nc_semantics != NC_TPI_CLTS) &&
     (nconf->nc_semantics != NC_TPI_COTS) &&
     (nconf->nc_semantics != NC_TPI_COTS_ORD))
  return;




 if (!__rpc_nconf2sockinfo(nconf, &si)) {
  syslog(LOG_ERR, "cannot get information for %s",
      nconf->nc_netid);
  return;
 }

 nhostsbak = nhosts;
 while (nhostsbak > 0) {
  --nhostsbak;
  if (sock_fdpos >= sock_fdcnt) {

   syslog(LOG_ERR, "Ran out of socket fd's");
   return;
  }
  fd = sock_fd[sock_fdpos++];
  if (fd < 0)
   continue;

  if (nconf->nc_semantics != NC_TPI_CLTS)
      listen(fd, SOMAXCONN);

  transp = svc_tli_create(fd, nconf, ((void*)0),
      RPC_MAXDATASIZE, RPC_MAXDATASIZE);

  if (transp != (SVCXPRT *) ((void*)0)) {
   if (!svc_reg(transp, NLM_PROG, NLM_SM, nlm_prog_0,
       ((void*)0)))
    syslog(LOG_ERR,
        "can't register %s NLM_PROG, NLM_SM service",
        nconf->nc_netid);

   if (!svc_reg(transp, NLM_PROG, NLM_VERS, nlm_prog_1,
       ((void*)0)))
    syslog(LOG_ERR,
        "can't register %s NLM_PROG, NLM_VERS service",
        nconf->nc_netid);

   if (!svc_reg(transp, NLM_PROG, NLM_VERSX, nlm_prog_3,
       ((void*)0)))
    syslog(LOG_ERR,
        "can't register %s NLM_PROG, NLM_VERSX service",
        nconf->nc_netid);

   if (!svc_reg(transp, NLM_PROG, NLM_VERS4, nlm_prog_4,
       ((void*)0)))
    syslog(LOG_ERR,
        "can't register %s NLM_PROG, NLM_VERS4 service",
        nconf->nc_netid);

  } else
   syslog(LOG_WARNING, "can't create %s services",
       nconf->nc_netid);

  if (registered == 0) {
   registered = 1;
   memset(&hints, 0, sizeof hints);
   hints.ai_flags = AI_PASSIVE;
   hints.ai_family = si.si_af;
   hints.ai_socktype = si.si_socktype;
   hints.ai_protocol = si.si_proto;

   if ((aicode = getaddrinfo(((void*)0), port_str, &hints,
       &res)) != 0) {
    syslog(LOG_ERR, "cannot get local address: %s",
        gai_strerror(aicode));
    exit(1);
   }

   servaddr.buf = malloc(res->ai_addrlen);
   memcpy(servaddr.buf, res->ai_addr, res->ai_addrlen);
   servaddr.len = res->ai_addrlen;

   rpcb_set(NLM_PROG, NLM_SM, nconf, &servaddr);
   rpcb_set(NLM_PROG, NLM_VERS, nconf, &servaddr);
   rpcb_set(NLM_PROG, NLM_VERSX, nconf, &servaddr);
   rpcb_set(NLM_PROG, NLM_VERS4, nconf, &servaddr);

   xcreated++;
   freeaddrinfo(res);
  }
 }
}
