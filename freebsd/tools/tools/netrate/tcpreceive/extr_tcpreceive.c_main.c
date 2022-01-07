
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int INADDR_ANY ;
 int PF_INET ;
 int PORT ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int err (int,char*) ;
 int handle_connection (int) ;
 int htons (int ) ;
 scalar_t__ listen (int,int) ;
 int socket (int ,int ,int ) ;

int
main(int argc, char *argv[])
{
 struct sockaddr_in sin;
 int accept_sock;

 accept_sock = socket(PF_INET, SOCK_STREAM, 0);
 if (accept_sock < 0)
  err(-1, "socket(PF_INET, SOCKET_STREAM, 0)");

 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = INADDR_ANY;
 sin.sin_port = htons(PORT);

 if (bind(accept_sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(-1, "bind");

 if (listen(accept_sock, -1) < 0)
  err(-1, "listen");

 while (1)
  handle_connection(accept_sock);

 return (0);
}
