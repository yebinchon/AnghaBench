
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SOCK_STREAM ;
 int accept (int ,struct sockaddr*,int*) ;
 int bzero (struct sockaddr_in*,int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int htonl (int ) ;
 int htons (int ) ;
 int listen_sock ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
tcp_pair(u_short port, int sock[2])
{
 int accept_sock, connect_sock;
 struct sockaddr_in sin;
 socklen_t len;

 connect_sock = socket(PF_INET, SOCK_STREAM, 0);
 if (connect_sock < 0)
  err(-1, "tcp_pair: socket");

 bzero(&sin, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = htons(port);

 if (connect(connect_sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(-1, "tcp_pair: connect");

 sleep(1);

 len = sizeof(sin);
 accept_sock = accept(listen_sock, (struct sockaddr *)&sin, &len);
 if (accept_sock < 0)
  err(-1, "tcp_pair: accept");

 sleep(1);

 sock[0] = accept_sock;
 sock[1] = connect_sock;
}
