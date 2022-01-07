
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cpus_load_timer ;
 int free_proc_table () ;
 int timer_stop (int *) ;

void
fini_processor_tbl(void)
{

 if (cpus_load_timer != ((void*)0)) {
  timer_stop(cpus_load_timer);
  cpus_load_timer = ((void*)0);
 }

 free_proc_table();
}
