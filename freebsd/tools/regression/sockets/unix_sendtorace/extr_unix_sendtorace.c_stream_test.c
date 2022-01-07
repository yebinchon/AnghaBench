
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
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_un*,int) ;
 int err (int,char*) ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 scalar_t__ listen (int,int) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int socket_path ;
 int strcpy (int ,int ) ;
 int stream_client () ;
 int stream_server (int) ;
 int unlink (int ) ;

__attribute__((used)) static void
stream_test(void)
{
 struct sockaddr_un sun;
 pid_t childpid;
 int listenfd;

 listenfd = socket(PF_UNIX, SOCK_STREAM, 0);
 if (listenfd < 0)
  err(-1, "stream_test: socket");

 bzero(&sun, sizeof(sun));
 sun.sun_len = sizeof(sun);
 sun.sun_family = AF_UNIX;
 strcpy(sun.sun_path, socket_path);

 if (bind(listenfd, (struct sockaddr *)&sun, sizeof(sun)) < 0)
  err(-1, "stream_test: bind");

 if (listen(listenfd, -1) < 0)
  err(-1, "stream_test: listen");

 childpid = fork();
 if (childpid < 0)
  err(-1, "stream_test: fork");

 if (childpid != 0) {
  sleep(1);
  stream_client();
  kill(childpid, SIGTERM);
  sleep(1);
 } else
  stream_server(listenfd);

 (void)unlink(socket_path);
}
