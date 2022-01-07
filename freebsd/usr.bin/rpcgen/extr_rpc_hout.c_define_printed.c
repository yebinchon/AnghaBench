
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* procs; struct TYPE_5__* next; } ;
typedef TYPE_1__ version_list ;
struct TYPE_6__ {int proc_name; struct TYPE_6__* next; } ;
typedef TYPE_2__ proc_list ;


 int abort () ;
 scalar_t__ streq (int ,int ) ;

__attribute__((used)) static int
define_printed(proc_list *stop, version_list *start)
{
 version_list *vers;
 proc_list *proc;

 for (vers = start; vers != ((void*)0); vers = vers->next) {
  for (proc = vers->procs; proc != ((void*)0); proc = proc->next) {
   if (proc == stop) {
    return (0);
   } else if (streq(proc->proc_name, stop->proc_name)) {
    return (1);
   }
  }
 }
 abort();

}
