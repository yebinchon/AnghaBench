
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*) ;
 int HAVE_THREADS ;
 int all_work_added ;
 int cond_add ;
 int cond_result ;
 int cond_write ;
 int free (int *) ;
 int grep_attr_mutex ;
 int grep_lock () ;
 int grep_mutex ;
 int grep_read_mutex ;
 int grep_unlock () ;
 scalar_t__ grep_use_locks ;
 int num_threads ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_destroy (int *) ;
 int * threads ;
 scalar_t__ todo_done ;
 scalar_t__ todo_end ;

__attribute__((used)) static int wait_all(void)
{
 int hit = 0;
 int i;

 if (!HAVE_THREADS)
  BUG("Never call this function unless you have started threads");

 grep_lock();
 all_work_added = 1;


 while (todo_done != todo_end)
  pthread_cond_wait(&cond_result, &grep_mutex);




 pthread_cond_broadcast(&cond_add);
 grep_unlock();

 for (i = 0; i < num_threads; i++) {
  void *h;
  pthread_join(threads[i], &h);
  hit |= (int) (intptr_t) h;
 }

 free(threads);

 pthread_mutex_destroy(&grep_mutex);
 pthread_mutex_destroy(&grep_read_mutex);
 pthread_mutex_destroy(&grep_attr_mutex);
 pthread_cond_destroy(&cond_add);
 pthread_cond_destroy(&cond_write);
 pthread_cond_destroy(&cond_result);
 grep_use_locks = 0;

 return hit;
}
