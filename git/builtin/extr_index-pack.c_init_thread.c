
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pack_fd; } ;


 int O_RDONLY ;
 int _ (char*) ;
 int counter_mutex ;
 int curr_pack ;
 int deepest_delta_mutex ;
 int die_errno (int ,int ) ;
 int init_recursive_mutex (int *) ;
 int key ;
 int nr_threads ;
 int open (int ,int ) ;
 int pthread_key_create (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int read_mutex ;
 scalar_t__ show_stat ;
 TYPE_1__* thread_data ;
 int threads_active ;
 int type_cas_mutex ;
 int work_mutex ;
 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static void init_thread(void)
{
 int i;
 init_recursive_mutex(&read_mutex);
 pthread_mutex_init(&counter_mutex, ((void*)0));
 pthread_mutex_init(&work_mutex, ((void*)0));
 pthread_mutex_init(&type_cas_mutex, ((void*)0));
 if (show_stat)
  pthread_mutex_init(&deepest_delta_mutex, ((void*)0));
 pthread_key_create(&key, ((void*)0));
 thread_data = xcalloc(nr_threads, sizeof(*thread_data));
 for (i = 0; i < nr_threads; i++) {
  thread_data[i].pack_fd = open(curr_pack, O_RDONLY);
  if (thread_data[i].pack_fd == -1)
   die_errno(_("unable to open %s"), curr_pack);
 }

 threads_active = 1;
}
