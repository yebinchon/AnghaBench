
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ pid_t ;


 int AF_UNIX ;
 int PF_UNIX ;
 int SIGTERM ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_un*,int) ;
 int datagram_client () ;
 int datagram_server (int) ;
 int err (int,char*) ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int socket_path ;
 int strcpy (int ,int ) ;
 int unlink (int ) ;

__attribute__((used)) static void
datagram_test(void)
{
 struct sockaddr_un sun;
 pid_t childpid;
 int serverfd;

 serverfd = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (serverfd < 0)
  err(-1, "datagram_test: socket");

 bzero(&sun, sizeof(sun));
 sun.sun_len = sizeof(sun);
 sun.sun_family = AF_UNIX;
 strcpy(sun.sun_path, socket_path);

 if (bind(serverfd, (struct sockaddr *)&sun, sizeof(sun)) < 0)
  err(-1, "datagram_test: bind");

 childpid = fork();
 if (childpid < 0)
  err(-1, "datagram_test: fork");

 if (childpid != 0) {
  sleep(1);
  datagram_client();
  kill(childpid, SIGTERM);
  sleep(1);
 } else
  datagram_server(serverfd);

 (void)unlink(socket_path);
}
