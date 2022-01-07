
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SOCK_STREAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int err (int,char*) ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ listen (scalar_t__,int) ;
 scalar_t__ listen_sock ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static void
tcp_setup(u_short port)
{
 struct sockaddr_in sin;

 listen_sock = socket(PF_INET, SOCK_STREAM, 0);
 if (listen_sock < 0)
  err(-1, "tcp_setup: listen");

 bzero(&sin, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = htons(port);

 if (bind(listen_sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(-1, "tcp_setup: bind");

 if (listen(listen_sock, -1) < 0)
  err(-1, "tcp_setup: listen");
}
