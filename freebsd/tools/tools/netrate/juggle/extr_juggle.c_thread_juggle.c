
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int pthread_t ;


 int CLOCK_REALTIME ;
 int NUMCYCLES ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int err (int,char*) ;
 int juggling_thread ;
 scalar_t__ message_recv (int) ;
 scalar_t__ message_send (int) ;
 scalar_t__ pthread_cond_wait (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int*) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int threaded_child_ready ;
 int threaded_cond ;
 int threaded_mtx ;
 int threaded_pipeline ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;

__attribute__((used)) static struct timespec
thread_juggle(int fd1, int fd2, int pipeline)
{
 struct timespec tstart, tfinish;
 pthread_t thread;
 int i, j;

 threaded_pipeline = pipeline;

 if (pthread_mutex_init(&threaded_mtx, ((void*)0)) != 0)
  err(-1, "thread_juggle: pthread_mutex_init");

 if (pthread_create(&thread, ((void*)0), juggling_thread, &fd2) != 0)
  err(-1, "thread_juggle: pthread_create");

 if (pthread_mutex_lock(&threaded_mtx) != 0)
  err(-1, "thread_juggle: pthread_mutex_lock");

 while (!threaded_child_ready) {
  if (pthread_cond_wait(&threaded_cond, &threaded_mtx) != 0)
   err(-1, "thread_juggle: pthread_cond_wait");
 }

 if (pthread_mutex_unlock(&threaded_mtx) != 0)
  err(-1, "thread_juggle: pthread_mutex_unlock");

 if (clock_gettime(CLOCK_REALTIME, &tstart) < 0)
  err(-1, "thread_juggle: clock_gettime");

 for (i = 0; i < NUMCYCLES; i++) {
  for (j = 0; j < pipeline; j++) {
   if (message_send(fd1) < 0)
    err(-1, "message_send fd1");
  }

  for (j = 0; j < pipeline; j++) {
   if (message_recv(fd1) < 0)
    err(-1, "message_recv fd1");
  }
 }

 if (clock_gettime(CLOCK_REALTIME, &tfinish) < 0)
  err(-1, "thread_juggle: clock_gettime");

 if (pthread_join(thread, ((void*)0)) != 0)
  err(-1, "thread_juggle: pthread_join");

 timespecsub(&tfinish, &tstart, &tfinish);

 return (tfinish);
}
