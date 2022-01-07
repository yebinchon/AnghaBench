
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int pthread_barrier_t ;


 int CHILD_REQUIRE (int) ;
 scalar_t__ EINTR ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 scalar_t__ errno ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int sem_wait (int *) ;
 scalar_t__ sigaddset (int *,int ) ;
 scalar_t__ sigemptyset (int *) ;
 int sigusr1_sem ;

__attribute__((used)) static void *
signal_thread(void *arg)
{
 int err;
 sigset_t sigmask;

 pthread_barrier_t *pbarrier = (pthread_barrier_t*)arg;


 do {
  err = sem_wait(&sigusr1_sem);
  CHILD_REQUIRE(err == 0 || errno == EINTR);
 } while (err != 0 && errno == EINTR);


 pthread_barrier_wait(pbarrier);





 CHILD_REQUIRE(sigemptyset(&sigmask) == 0);
 CHILD_REQUIRE(sigaddset(&sigmask, SIGUSR1) == 0);
 CHILD_REQUIRE(pthread_sigmask(SIG_BLOCK, &sigmask, ((void*)0)) == 0);


 pthread_barrier_wait(pbarrier);


 pthread_barrier_wait(pbarrier);

 return (((void*)0));
}
