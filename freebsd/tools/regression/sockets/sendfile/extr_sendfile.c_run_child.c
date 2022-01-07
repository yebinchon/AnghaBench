
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
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SOCK_STREAM ;
 int TEST_PORT ;
 int TEST_SECONDS ;
 int _exit (int) ;
 scalar_t__ accept (scalar_t__,int *,int *) ;
 scalar_t__ accept_socket ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int cancel_alarm () ;
 int close (scalar_t__) ;
 int errno ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ listen (scalar_t__,int) ;
 scalar_t__ listen_socket ;
 int printf (char*,char*) ;
 scalar_t__ receive_test () ;
 int setup_alarm (int ) ;
 scalar_t__ socket (int ,int ,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static void
run_child(void)
{
 struct sockaddr_in sin;
 int rc = 0;

 listen_socket = socket(PF_INET, SOCK_STREAM, 0);
 if (listen_socket < 0) {
  printf("# socket: %s\n", strerror(errno));
  rc = -1;
 }

 if (!rc) {
  bzero(&sin, sizeof(sin));
  sin.sin_len = sizeof(sin);
  sin.sin_family = AF_INET;
  sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  sin.sin_port = htons(TEST_PORT);

  if (bind(listen_socket, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
   printf("# bind: %s\n", strerror(errno));
   rc = -1;
  }
 }

 if (!rc && listen(listen_socket, -1) < 0) {
  printf("# listen: %s\n", strerror(errno));
  rc = -1;
 }

 if (!rc) {
  accept_socket = accept(listen_socket, ((void*)0), ((void*)0));
  setup_alarm(TEST_SECONDS);
  if (receive_test() != 0)
   rc = -1;
 }

 cancel_alarm();
 if (accept_socket > 0)
  close(accept_socket);
 if (listen_socket > 0)
  close(listen_socket);

 _exit(rc);
}
