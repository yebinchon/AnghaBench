
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_long ;
typedef int u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int CLIENT ;


 int AF_INET ;
 int RPC_ANYSOCK ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int*,int ,int ) ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 int errx (int,char*,char*) ;
 struct hostent* gethostbyname (char*) ;
 int htons (scalar_t__) ;
 scalar_t__ inet_aton (char*,TYPE_1__*) ;
 int memset (struct sockaddr_in*,int ,int) ;

CLIENT *
yp_bind_host(char *server, u_long program, u_long version, u_short port,
    int usetcp)
{
 struct sockaddr_in rsrv_sin;
 static CLIENT *client;
 struct hostent *h;
 struct timeval tv;
 int rsrv_sock;

 memset(&rsrv_sin, 0, sizeof rsrv_sin);
 rsrv_sin.sin_len = sizeof rsrv_sin;
 rsrv_sin.sin_family = AF_INET;
 rsrv_sock = RPC_ANYSOCK;
 if (port != 0)
  rsrv_sin.sin_port = htons(port);

 if (*server >= '0' && *server <= '9') {
  if (inet_aton(server, &rsrv_sin.sin_addr) == 0) {
   errx(1, "inet_aton: invalid address %s.",
       server);
  }
 } else {
  h = gethostbyname(server);
  if (h == ((void*)0)) {
   errx(1, "gethostbyname: unknown host %s.",
       server);
  }
  rsrv_sin.sin_addr.s_addr = *(u_int32_t *)h->h_addr;
 }

 tv.tv_sec = 10;
 tv.tv_usec = 0;

 if (usetcp)
  client = clnttcp_create(&rsrv_sin, program, version,
      &rsrv_sock, 0, 0);
 else
  client = clntudp_create(&rsrv_sin, program, version, tv,
      &rsrv_sock);

 if (client == ((void*)0)) {
  errx(1, "clntudp_create: no contact with host %s.",
      server);
 }

 return (client);
}
