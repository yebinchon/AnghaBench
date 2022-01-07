
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int dummy; } ;
struct sort_level {size_t tosort_num; size_t tosort_sz; struct sort_list_item** tosort; } ;
typedef int pthread_mutexattr_t ;


 size_t MT_SORT_THRESHOLD ;
 int PTHREAD_MUTEX_ADAPTIVE_NP ;
 int free_sort_level (struct sort_level*) ;
 int g_ls_cond ;
 int g_ls_mutex ;
 int memset (struct sort_level*,int ,int) ;
 int mtsem ;
 int nthreads ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;
 int run_top_sort_level (struct sort_level*) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;
 size_t sort_left ;
 struct sort_level* sort_malloc (int) ;

__attribute__((used)) static void
run_sort(struct sort_list_item **base, size_t nmemb)
{
 struct sort_level *sl;
 sl = sort_malloc(sizeof(struct sort_level));
 memset(sl, 0, sizeof(struct sort_level));

 sl->tosort = base;
 sl->tosort_num = nmemb;
 sl->tosort_sz = nmemb;





 run_top_sort_level(sl);

 free_sort_level(sl);
}
