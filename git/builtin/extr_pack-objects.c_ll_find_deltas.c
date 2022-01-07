
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_params {int window; int depth; unsigned int* processed; int working; int data_ready; unsigned int list_size; unsigned int remaining; int mutex; int cond; int thread; struct object_entry** list; } ;
struct object_entry {scalar_t__ hash; } ;


 int _ (char*) ;
 int cleanup_threaded_search () ;
 int delta_search_threads ;
 int die (int ,int ) ;
 int find_deltas (struct object_entry**,unsigned int*,int,int,unsigned int*) ;
 int fprintf_ln (int ,int ,int) ;
 int free (struct thread_params*) ;
 int init_threaded_search () ;
 scalar_t__ pack_to_stdout ;
 scalar_t__ progress ;
 int progress_cond ;
 int progress_lock () ;
 int progress_mutex ;
 int progress_unlock () ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,struct thread_params*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;
 int strerror (int) ;
 int threaded_find_deltas ;
 struct thread_params* xcalloc (int,int) ;

__attribute__((used)) static void ll_find_deltas(struct object_entry **list, unsigned list_size,
      int window, int depth, unsigned *processed)
{
 struct thread_params *p;
 int i, ret, active_threads = 0;

 init_threaded_search();

 if (delta_search_threads <= 1) {
  find_deltas(list, &list_size, window, depth, processed);
  cleanup_threaded_search();
  return;
 }
 if (progress > pack_to_stdout)
  fprintf_ln(stderr, _("Delta compression using up to %d threads"),
      delta_search_threads);
 p = xcalloc(delta_search_threads, sizeof(*p));


 for (i = 0; i < delta_search_threads; i++) {
  unsigned sub_size = list_size / (delta_search_threads - i);


  if (sub_size < 2*window && i+1 < delta_search_threads)
   sub_size = 0;

  p[i].window = window;
  p[i].depth = depth;
  p[i].processed = processed;
  p[i].working = 1;
  p[i].data_ready = 0;


  while (sub_size && sub_size < list_size &&
         list[sub_size]->hash &&
         list[sub_size]->hash == list[sub_size-1]->hash)
   sub_size++;

  p[i].list = list;
  p[i].list_size = sub_size;
  p[i].remaining = sub_size;

  list += sub_size;
  list_size -= sub_size;
 }


 for (i = 0; i < delta_search_threads; i++) {
  if (!p[i].list_size)
   continue;
  pthread_mutex_init(&p[i].mutex, ((void*)0));
  pthread_cond_init(&p[i].cond, ((void*)0));
  ret = pthread_create(&p[i].thread, ((void*)0),
         threaded_find_deltas, &p[i]);
  if (ret)
   die(_("unable to create thread: %s"), strerror(ret));
  active_threads++;
 }
 while (active_threads) {
  struct thread_params *target = ((void*)0);
  struct thread_params *victim = ((void*)0);
  unsigned sub_size = 0;

  progress_lock();
  for (;;) {
   for (i = 0; !target && i < delta_search_threads; i++)
    if (!p[i].working)
     target = &p[i];
   if (target)
    break;
   pthread_cond_wait(&progress_cond, &progress_mutex);
  }

  for (i = 0; i < delta_search_threads; i++)
   if (p[i].remaining > 2*window &&
       (!victim || victim->remaining < p[i].remaining))
    victim = &p[i];
  if (victim) {
   sub_size = victim->remaining / 2;
   list = victim->list + victim->list_size - sub_size;
   while (sub_size && list[0]->hash &&
          list[0]->hash == list[-1]->hash) {
    list++;
    sub_size--;
   }
   if (!sub_size) {






    sub_size = victim->remaining / 2;
    list -= sub_size;
   }
   target->list = list;
   victim->list_size -= sub_size;
   victim->remaining -= sub_size;
  }
  target->list_size = sub_size;
  target->remaining = sub_size;
  target->working = 1;
  progress_unlock();

  pthread_mutex_lock(&target->mutex);
  target->data_ready = 1;
  pthread_cond_signal(&target->cond);
  pthread_mutex_unlock(&target->mutex);

  if (!sub_size) {
   pthread_join(target->thread, ((void*)0));
   pthread_cond_destroy(&target->cond);
   pthread_mutex_destroy(&target->mutex);
   active_threads--;
  }
 }
 cleanup_threaded_search();
 free(p);
}
