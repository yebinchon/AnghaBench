
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int pthread_barrier_t ;


 int CHILD_REQUIRE (int) ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sleep (int) ;

__attribute__((used)) static void *
mask_usr1_thread(void *arg)
{
 pthread_barrier_t *pbarrier;
 sigset_t sigmask;

 pbarrier = (pthread_barrier_t*)arg;

 sigemptyset(&sigmask);
 sigaddset(&sigmask, SIGUSR1);
 CHILD_REQUIRE(pthread_sigmask(SIG_BLOCK, &sigmask, ((void*)0)) == 0);


 pthread_barrier_wait(pbarrier);

 for (;;)
  sleep(60);

 return (((void*)0));
}
