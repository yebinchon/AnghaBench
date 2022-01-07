
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
typedef int CLIENT ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int RPC_ANYSOCK ;
 int * clntudp_create (struct sockaddr_in*,int ,int ,struct timeval,int*) ;
 int errx (int,char*) ;
 int htonl (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;

CLIENT *
yp_bind_local(u_long program, u_long version)
{
 struct sockaddr_in rsrv_sin;
 static CLIENT *client;
 struct timeval tv;
 int rsrv_sock;

 memset(&rsrv_sin, 0, sizeof rsrv_sin);
 rsrv_sin.sin_len = sizeof rsrv_sin;
 rsrv_sin.sin_family = AF_INET;
 rsrv_sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 rsrv_sock = RPC_ANYSOCK;

 tv.tv_sec = 10;
 tv.tv_usec = 0;

 client = clntudp_create(&rsrv_sin, program, version, tv, &rsrv_sock);
 if (client == ((void*)0)) {
  errx(1, "clntudp_create: no contact with localhost.");
 }

 return (client);
}
