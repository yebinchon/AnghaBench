
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_mutex ;
 int progress_cond ;
 int progress_mutex ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void cleanup_threaded_search(void)
{
 pthread_cond_destroy(&progress_cond);
 pthread_mutex_destroy(&cache_mutex);
 pthread_mutex_destroy(&progress_mutex);
}
