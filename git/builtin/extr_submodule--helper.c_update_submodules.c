
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_update_clone {int update_clone_nr; int * update_clone; scalar_t__ quickstop; int max_jobs; } ;


 int run_processes_parallel_tr2 (int ,int ,int ,int ,struct submodule_update_clone*,char*,char*) ;
 int update_clone_get_next_task ;
 int update_clone_start_failure ;
 int update_clone_task_finished ;
 int update_submodule (int *) ;

__attribute__((used)) static int update_submodules(struct submodule_update_clone *suc)
{
 int i;

 run_processes_parallel_tr2(suc->max_jobs, update_clone_get_next_task,
       update_clone_start_failure,
       update_clone_task_finished, suc, "submodule",
       "parallel/update");
 if (suc->quickstop)
  return 1;

 for (i = 0; i < suc->update_clone_nr; i++)
  update_submodule(&suc->update_clone[i]);

 return 0;
}
