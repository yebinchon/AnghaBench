
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int localaddr ;


 int AF_INET ;
 int EX_OSERR ;
 int INADDR_ANY ;
 int LISTEN ;
 int PORT ;
 int RECV_LIMIT ;
 int SOCK_STREAM ;
 int accept (int,int *,int *) ;
 int atoi (int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 int err (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 int htons (int) ;
 scalar_t__ listen (int,int) ;
 int optarg ;
 int printf (char*,int) ;
 int socket (int ,int ,int ) ;
 int usage () ;

int main(int argc, char **argv)
{

 int ch, srv_sock, cli_sock, recvd = 0;
 int port = PORT;
 int limit = LISTEN;
 struct sockaddr_in localaddr;

 while ((ch = getopt(argc, argv, "p:l:")) != -1) {
  switch (ch) {
  case 'p':
   port = atoi(optarg);
   break;
  case 'l':
   limit = atoi(optarg);
                     break;
  case 'h':
  default:
   usage();
  }
 }

 bzero(&localaddr, sizeof(localaddr));
 localaddr.sin_len = sizeof(localaddr);
 localaddr.sin_family = AF_INET;
 localaddr.sin_port = htons(port);
 localaddr.sin_addr.s_addr = INADDR_ANY;

 srv_sock = socket(AF_INET, SOCK_STREAM, 0);

 if (bind(srv_sock, (struct sockaddr *)&localaddr,
   sizeof(struct sockaddr_in)) < 0)
  err(EX_OSERR, "Could not bind to INADDR_ANY:%d", port);

 if (listen(srv_sock, limit) < 0)
  err(EX_OSERR, "Failed to listen with depth of %d\n", limit);

 while (((cli_sock = accept(srv_sock, ((void*)0), ((void*)0))) >= 0)
        && (recvd < RECV_LIMIT)) {
  close(cli_sock);
  recvd++;
 }

 listen(srv_sock, 0);

 while (((cli_sock = accept(srv_sock, ((void*)0), ((void*)0))) >= 0)
     && (recvd <= (RECV_LIMIT + limit + 1))) {
  close(cli_sock);
  recvd++;
 }

 if (accept(srv_sock, ((void*)0), ((void*)0)) >= 0)
  printf ("Late connection at %d\n", recvd);
 else
  printf("recvd %d\n", recvd);
}
