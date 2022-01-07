
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int pthread_t ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int PORT ;
 int SOCK_STREAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int do_accept ;
 int do_fork () ;
 int err (int,char*) ;
 int exit (int ) ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ listen (scalar_t__,int) ;
 scalar_t__ listen_fd ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int sleep (int) ;
 scalar_t__ socket (int ,int ,int ) ;

int
main(void)
{
 struct sockaddr_in sin;
 pthread_t accept_thread;

 listen_fd = socket(PF_INET, SOCK_STREAM, 0);
 if (listen_fd < 0)
  err(1, "socket");
 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sin.sin_port = htons(PORT);
 if (bind(listen_fd, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(1, "bind");
 if (listen(listen_fd, -1) <0)
  err(1, "listen");
 if (pthread_create(&accept_thread, ((void*)0), do_accept, ((void*)0)) != 0)
  err(1, "pthread_create");
 sleep(1);
 do_fork();
 exit(0);
}
