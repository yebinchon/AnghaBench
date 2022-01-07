
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uid_t ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct netconfig {int dummy; } ;
typedef scalar_t__ rpcvers_t ;
typedef int CLIENT ;


 scalar_t__ AF_INET6 ;
 int CLGET_FD ;
 scalar_t__ CLIENT_CACHE_LIFETIME ;
 int CLIENT_CACHE_SIZE ;
 int CLSET_TIMEOUT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int NLM_PROG ;
 int addrcmp (struct sockaddr*,struct sockaddr*) ;
 int bindresvport (int,int *) ;
 int * clnt_cache_addr ;
 size_t clnt_cache_next_to_use ;
 int ** clnt_cache_ptr ;
 long* clnt_cache_time ;
 scalar_t__* clnt_cache_vers ;
 int clnt_control (int *,int ,...) ;
 int clnt_destroy (int *) ;
 char* clnt_spcreateerror (char*) ;
 int * clnt_tp_create (char*,int ,scalar_t__,struct netconfig*) ;
 int debug_level ;
 int freenetconfigent (struct netconfig*) ;
 char* gai_strerror (int) ;
 char* geteuid () ;
 int getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 struct netconfig* getnetconfigent (char const*) ;
 int gettimeofday (struct timeval*,int *) ;
 int memcpy (int *,struct sockaddr*,int ) ;
 scalar_t__ seteuid (char*) ;
 int syslog (int ,char*,...) ;

CLIENT *
get_client(struct sockaddr *host_addr, rpcvers_t vers)
{
 CLIENT *client;
 struct timeval retry_time, time_now;
 int error, i;
 const char *netid;
 struct netconfig *nconf;
 char host[NI_MAXHOST];
 uid_t old_euid;
 int clnt_fd;

 gettimeofday(&time_now, ((void*)0));





 for (i = 0; i < CLIENT_CACHE_SIZE; i++) {
  client = clnt_cache_ptr[i];
  if (client && ((clnt_cache_time[i] + CLIENT_CACHE_LIFETIME)
      < time_now.tv_sec)) {

   if (debug_level > 3)
    syslog(LOG_DEBUG, "Expired CLIENT* in cache");
   clnt_cache_time[i] = 0L;
   clnt_destroy(client);
   clnt_cache_ptr[i] = ((void*)0);
   client = ((void*)0);
  }
  if (client && !addrcmp((struct sockaddr *)&clnt_cache_addr[i],
      host_addr) && clnt_cache_vers[i] == vers) {

   if (debug_level > 3)
    syslog(LOG_DEBUG, "Found CLIENT* in cache");
   return (client);
  }
 }

 if (debug_level > 3)
  syslog(LOG_DEBUG, "CLIENT* not found in cache, creating");


 if (clnt_cache_ptr[clnt_cache_next_to_use]) {
  clnt_destroy(clnt_cache_ptr[clnt_cache_next_to_use]);
  clnt_cache_ptr[clnt_cache_next_to_use] = ((void*)0);
 }





 error = getnameinfo(host_addr, host_addr->sa_len, host, sizeof host,
       ((void*)0), 0, NI_NUMERICHOST);
 if (error != 0) {
  syslog(LOG_ERR, "unable to get name string for caller: %s",
         gai_strerror(error));
  return ((void*)0);
 }


 if (host_addr->sa_family == AF_INET6)
  netid = "udp6";
 else
  netid = "udp";






 nconf = getnetconfigent(netid);
 if (nconf == ((void*)0)) {
  syslog(LOG_ERR, "could not get netconfig info for '%s': "
    "no /etc/netconfig file?", netid);
  return ((void*)0);
 }

 client = clnt_tp_create(host, NLM_PROG, vers, nconf);
 freenetconfigent(nconf);

 if (!client) {
  syslog(LOG_ERR, "%s", clnt_spcreateerror("clntudp_create"));
  syslog(LOG_ERR, "Unable to return result to %s", host);
  return ((void*)0);
 }


 clnt_control(client, CLGET_FD, &clnt_fd);


 old_euid = geteuid();
 if (seteuid(0) != 0) {
  syslog(LOG_ERR, "seteuid(0) failed");
  return ((void*)0);
 }





 bindresvport(clnt_fd, ((void*)0));


 if (seteuid(old_euid) != 0) {
  syslog(LOG_ERR, "seteuid(%d) failed", old_euid);
  return ((void*)0);
 }


 clnt_cache_ptr[clnt_cache_next_to_use] = client;
 memcpy(&clnt_cache_addr[clnt_cache_next_to_use], host_addr,
     host_addr->sa_len);
 clnt_cache_vers[clnt_cache_next_to_use] = vers;
 clnt_cache_time[clnt_cache_next_to_use] = time_now.tv_sec;
 if (++clnt_cache_next_to_use >= CLIENT_CACHE_SIZE)
  clnt_cache_next_to_use = 0;






 retry_time.tv_sec = -1;
 retry_time.tv_usec = -1;
 clnt_control(client, CLSET_TIMEOUT, (char *)&retry_time);

 if (debug_level > 3)
  syslog(LOG_DEBUG, "Created CLIENT* for %s", host);
 return client;
}
