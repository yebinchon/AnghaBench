
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_cpus ;
 int smp_rendezvous_cpus (int ,void (*) (void*),void (*) (void*),void (*) (void*),void*) ;

void
smp_rendezvous(void (*setup_func)(void *),
        void (*action_func)(void *),
        void (*teardown_func)(void *),
        void *arg)
{

 smp_rendezvous_cpus(all_cpus, setup_func, action_func, teardown_func,
     arg);
}
