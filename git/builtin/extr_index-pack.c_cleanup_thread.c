
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pack_fd; } ;


 int close (int ) ;
 int counter_mutex ;
 int deepest_delta_mutex ;
 int free (TYPE_1__*) ;
 int key ;
 int nr_threads ;
 int pthread_key_delete (int ) ;
 int pthread_mutex_destroy (int *) ;
 int read_mutex ;
 scalar_t__ show_stat ;
 TYPE_1__* thread_data ;
 scalar_t__ threads_active ;
 int type_cas_mutex ;
 int work_mutex ;

__attribute__((used)) static void cleanup_thread(void)
{
 int i;
 if (!threads_active)
  return;
 threads_active = 0;
 pthread_mutex_destroy(&read_mutex);
 pthread_mutex_destroy(&counter_mutex);
 pthread_mutex_destroy(&work_mutex);
 pthread_mutex_destroy(&type_cas_mutex);
 if (show_stat)
  pthread_mutex_destroy(&deepest_delta_mutex);
 for (i = 0; i < nr_threads; i++)
  close(thread_data[i].pack_fd);
 pthread_key_delete(key);
 free(thread_data);
}
