
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct hostent {int h_addr; } ;
typedef int statstime ;
typedef int host_stat ;
typedef int CLIENT ;


 scalar_t__ RPC_SUCCESS ;
 int RSTATPROC_STATS ;
 int RSTATPROG ;
 int RSTATVERS_TIME ;
 int bzero (char*,int) ;
 scalar_t__ clnt_call (int *,int ,int ,int *,int ,int *,struct timeval) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_destroy (int *) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (int *,char*) ;
 struct hostent* gethostbyname (char*) ;
 int memcpy (int *,int ,int) ;
 int rstat_reply (int *,struct sockaddr_in*) ;
 int warnx (char*,char*,...) ;
 scalar_t__ xdr_statstime ;
 scalar_t__ xdr_void ;

__attribute__((used)) static int
onehost(char *host)
{
 CLIENT *rstat_clnt;
 statstime host_stat;
 struct sockaddr_in addr;
 struct hostent *hp;
 struct timeval tv;

 hp = gethostbyname(host);
 if (hp == ((void*)0)) {
  warnx("unknown host \"%s\"", host);
  return(-1);
 }

 rstat_clnt = clnt_create(host, RSTATPROG, RSTATVERS_TIME, "udp");
 if (rstat_clnt == ((void*)0)) {
  warnx("%s %s", host, clnt_spcreateerror(""));
  return(-1);
 }

 bzero((char *)&host_stat, sizeof(host_stat));
 tv.tv_sec = 15;
 tv.tv_usec = 0;
 if (clnt_call(rstat_clnt, RSTATPROC_STATS,
     (xdrproc_t)xdr_void, ((void*)0),
     (xdrproc_t)xdr_statstime, &host_stat, tv) != RPC_SUCCESS) {
  warnx("%s: %s", host, clnt_sperror(rstat_clnt, host));
  clnt_destroy(rstat_clnt);
  return(-1);
 }

 memcpy(&addr.sin_addr.s_addr, hp->h_addr, sizeof(int));
 rstat_reply(&host_stat, &addr);
 clnt_destroy(rstat_clnt);
 return (0);
}
