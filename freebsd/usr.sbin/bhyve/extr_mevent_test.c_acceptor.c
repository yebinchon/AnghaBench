
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
 int EVF_READ ;
 int EVF_TIMER ;
 int INADDR_ANY ;
 int SOCK_STREAM ;
 int TEST_PORT ;
 int accept (int,int *,int *) ;
 int accept_condvar ;
 int accept_mutex ;
 int acceptor_callback ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int echoer ;
 int exit (int) ;
 int htonl (int ) ;
 int htons (int ) ;
 scalar_t__ listen (int,int) ;
 int mevent_add (int,int ,int ,int *) ;
 int perror (char*) ;
 int printf (char*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_mutex_lock (int *) ;
 int socket (int ,int ,int ) ;
 int tevp ;
 int timer_callback ;

__attribute__((used)) static void *
acceptor(void *param)
{
 struct sockaddr_in sin;
 pthread_t tid;
 int news;
 int s;
 static int first;

 if ((s = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
  perror("cannot create socket");
  exit(4);
 }

 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_ANY);
 sin.sin_port = htons(TEST_PORT);

 if (bind(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  perror("cannot bind socket");
  exit(4);
 }

 if (listen(s, 1) < 0) {
  perror("cannot listen socket");
  exit(4);
 }

 (void) mevent_add(s, EVF_READ, acceptor_callback, ((void*)0));

 pthread_mutex_lock(&accept_mutex);

 while (!pthread_cond_wait(&accept_condvar, &accept_mutex)) {
  news = accept(s, ((void*)0), ((void*)0));
  if (news < 0) {
   perror("accept error");
  } else {
   static int first = 1;

   if (first) {



    first = 0;
    tevp = mevent_add(1, EVF_TIMER, timer_callback,
        ((void*)0));
   }

   printf("incoming connection, spawning thread\n");
   pthread_create(&tid, ((void*)0), echoer,
           (void *)(uintptr_t)news);
  }
 }

 return (((void*)0));
}
