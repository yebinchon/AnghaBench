
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_mutex ;
 int progress_cond ;
 int progress_mutex ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void init_threaded_search(void)
{
 pthread_mutex_init(&cache_mutex, ((void*)0));
 pthread_mutex_init(&progress_mutex, ((void*)0));
 pthread_cond_init(&progress_cond, ((void*)0));
}
