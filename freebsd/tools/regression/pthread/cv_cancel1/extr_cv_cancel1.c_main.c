
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int NLOOPS ;
 void* PTHREAD_CANCELED ;
 int cv ;
 int m ;
 int printf (char*,...) ;
 int pthread_cancel (int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_setconcurrency (int) ;
 int sleep (int) ;
 int stop ;
 int thr_routine ;
 int wake ;

int main(int argc, char **argv)
{
 pthread_t td;
 int i;
 void *result;

 pthread_setconcurrency(1);
 for (i = 0; i < NLOOPS; ++i) {
  stop = 0;
  wake = 0;

  pthread_create(&td, ((void*)0), thr_routine, ((void*)0));
  sleep(1);
  printf("trying: %d\n", i);
  pthread_mutex_lock(&m);
  wake = 1;
  pthread_cond_signal(&cv);
  pthread_cancel(td);
  pthread_mutex_unlock(&m);
  stop = 1;
  result = ((void*)0);
  pthread_join(td, &result);
  if (result == PTHREAD_CANCELED) {
   printf("the condition variable implementation does not\n"
          "conform to SUSv3, a thread unblocked from\n"
          "condition variable still can be canceled.\n");
   return (1);
  }
 }

 printf("OK\n");
 return (0);
}
