
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
 int SOCK_STREAM ;
 int accept (int,int *,int *) ;
 int bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 int err (int,char*) ;
 int htonl (int ) ;
 int htons (long) ;
 int listen (int,int) ;
 int socket (int ,int ,int ) ;
 long strtoul (char*,char**,int) ;
 int usage () ;

__attribute__((used)) static void
tcpconnect_server(int argc, char *argv[])
{
 int listen_sock, accept_sock;
 struct sockaddr_in sin;
 char *dummy;
 long port;

 if (argc != 1)
  usage();

 bzero(&sin, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_ANY);

 port = strtoul(argv[0], &dummy, 10);
 if (port < 1 || port > 65535 || *dummy != '\0')
  usage();
 sin.sin_port = htons(port);

 listen_sock = socket(PF_INET, SOCK_STREAM, 0);
 if (listen_sock == -1)
  err(-1, "socket");

 if (bind(listen_sock, (struct sockaddr *)&sin, sizeof(sin)) == -1)
  err(-1, "bind");

 if (listen(listen_sock, -1) == -1)
  err(-1, "listen");

 while (1) {
  accept_sock = accept(listen_sock, ((void*)0), ((void*)0));
  close(accept_sock);
 }
}
