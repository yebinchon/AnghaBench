
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMCYCLES ;
 int err (int,char*) ;
 scalar_t__ message_recv (int) ;
 scalar_t__ message_send (int) ;
 scalar_t__ pthread_cond_signal (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int threaded_child_ready ;
 int threaded_cond ;
 int threaded_mtx ;
 int threaded_pipeline ;

__attribute__((used)) static void *
juggling_thread(void *arg)
{
 int fd2, i, j;

 fd2 = *(int *)arg;

 if (pthread_mutex_lock(&threaded_mtx) != 0)
  err(-1, "juggling_thread: pthread_mutex_lock");

 threaded_child_ready = 1;

 if (pthread_cond_signal(&threaded_cond) != 0)
  err(-1, "juggling_thread: pthread_cond_signal");

 if (pthread_mutex_unlock(&threaded_mtx) != 0)
  err(-1, "juggling_thread: pthread_mutex_unlock");

 for (i = 0; i < NUMCYCLES; i++) {
  for (j = 0; j < threaded_pipeline; j++) {
   if (message_recv(fd2) < 0)
    err(-1, "message_recv fd2");

   if (message_send(fd2) < 0)
    err(-1, "message_send fd2");
  }
 }

 return (((void*)0));
}
