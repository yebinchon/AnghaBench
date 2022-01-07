
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cv ;
 int m ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_yield () ;
 scalar_t__ stop ;
 scalar_t__ wake ;

void *
thr_routine(void *arg)
{
 pthread_mutex_lock(&m);
 while (wake == 0)
  pthread_cond_wait(&cv, &m);
 pthread_mutex_unlock(&m);

 while (stop == 0)
  pthread_yield();
 return (((void*)0));
}
