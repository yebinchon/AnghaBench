
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sched_load_add () ;
 int setup_runqs () ;

__attribute__((used)) static void
sched_setup(void *dummy)
{

 setup_runqs();


 sched_load_add();
}
