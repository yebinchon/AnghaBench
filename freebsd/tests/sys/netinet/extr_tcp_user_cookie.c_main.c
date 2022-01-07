
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int srv ;
typedef int cookie ;


 int AF_INET ;
 int EXIT_FAILURE ;
 int EX_OSERR ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_USER_COOKIE ;
 int accept (int,int *,int ) ;
 int atoi (char*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int buflen ;
 int close (int) ;
 int err (int ,char*,...) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int htons (int) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int read (int,char**,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int warn (char*) ;

int
main(int argc, char **argv)
{
 struct sockaddr_in srv;
 int sock, accepted, port, cookie;
 int ret;
 char recvbuf[buflen];

 if (argc != 3) {
  fprintf(stderr, "Usage: %s port cookie\n", argv[0]);
  exit(2);
 }

 port = atoi(argv[1]);
 cookie = atoi(argv[2]);

 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock < 0)
  err(EXIT_FAILURE, "socket");

 memset(&srv, 0, sizeof(srv));
 srv.sin_len = sizeof(srv);
 srv.sin_family = AF_INET;
 srv.sin_port = htons(port);
 srv.sin_addr.s_addr = INADDR_ANY;

 if (bind(sock, (struct sockaddr *)&srv, srv.sin_len) < 0)
  err(EX_OSERR, "failed to bind to port %d", port);

 if (listen(sock, 5) < 0)
  err(EX_OSERR, "failed to listen on socket");

 ret = setsockopt(sock, SOL_SOCKET, SO_USER_COOKIE, &cookie, sizeof(cookie));
 if (ret < 0)
  err(EX_OSERR, "setsockopt(SO_USER_COOKIE)");

 while (1) {

  accepted = accept(sock, ((void*)0), 0);

  if (accepted < 0)
   err(EX_OSERR, "accept failed");

  ret = setsockopt(accepted, SOL_SOCKET, SO_USER_COOKIE,
     &cookie, sizeof(cookie));
  if (ret < 0)
   err(EX_OSERR, "setsockopt(SO_USER_COOKIE)");

  ret = read(accepted, &recvbuf, buflen);

  if (ret < 0)
   warn("failed read");

  close(accepted);
 }

 return (0);
}
