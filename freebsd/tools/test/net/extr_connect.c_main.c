
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int remoteaddr ;


 int AF_INET ;
 int INADDR_ANY ;
 int PORT ;
 int SOCK_STREAM ;
 int atoi (int ) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int getopt (int,char**,char*) ;
 int htons (int) ;
 int optarg ;
 int printf (char*,int,int) ;
 int socket (int ,int ,int ) ;
 int usage () ;

int main(int argc, char **argv)
{

 int ch, cli_sock, count = 0;
 int port = PORT;
 struct sockaddr_in remoteaddr;

 while ((ch = getopt(argc, argv, "p:")) != -1) {
  switch (ch) {
  case 'p':
   port = atoi(optarg);
   break;
  case 'h':
  default:
   usage();
  }
 }

 bzero(&remoteaddr, sizeof(remoteaddr));
 remoteaddr.sin_len = sizeof(remoteaddr);
 remoteaddr.sin_family = AF_INET;
 remoteaddr.sin_port = htons(port);
 remoteaddr.sin_addr.s_addr = INADDR_ANY;

 cli_sock = socket(AF_INET, SOCK_STREAM, 0);

 while ((cli_sock = connect(cli_sock, (struct sockaddr *)&remoteaddr,
       sizeof(remoteaddr))) >= 0) {
  count++;
  close(cli_sock);
  cli_sock = socket(AF_INET, SOCK_STREAM, 0);
 }

 printf("Exiting at %d with errno %d\n", count, errno);

}
