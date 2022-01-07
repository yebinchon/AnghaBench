
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int spinlock_enter () ;
 int spinlock_exit () ;

void
smp_rendezvous_cpus(cpuset_t map,
 void (*setup_func)(void *),
 void (*action_func)(void *),
 void (*teardown_func)(void *),
 void *arg)
{




 spinlock_enter();
 if (setup_func != ((void*)0))
  setup_func(arg);
 if (action_func != ((void*)0))
  action_func(arg);
 if (teardown_func != ((void*)0))
  teardown_func(arg);
 spinlock_exit();
}
