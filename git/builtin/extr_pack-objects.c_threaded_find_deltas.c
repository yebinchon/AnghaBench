
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_params {int mutex; scalar_t__ data_ready; int cond; scalar_t__ working; int processed; int depth; int window; scalar_t__ remaining; int list; } ;


 int find_deltas (int ,scalar_t__*,int ,int ,int ) ;
 int progress_cond ;
 int progress_lock () ;
 int progress_unlock () ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void *threaded_find_deltas(void *arg)
{
 struct thread_params *me = arg;

 progress_lock();
 while (me->remaining) {
  progress_unlock();

  find_deltas(me->list, &me->remaining,
       me->window, me->depth, me->processed);

  progress_lock();
  me->working = 0;
  pthread_cond_signal(&progress_cond);
  progress_unlock();
  pthread_mutex_lock(&me->mutex);
  while (!me->data_ready)
   pthread_cond_wait(&me->cond, &me->mutex);
  me->data_ready = 0;
  pthread_mutex_unlock(&me->mutex);

  progress_lock();
 }
 progress_unlock();

 return ((void*)0);
}
