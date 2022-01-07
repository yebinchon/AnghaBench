
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int proc_num; struct TYPE_3__* next; } ;
typedef TYPE_1__ proc_list ;


 scalar_t__ streq (int ,char*) ;

int
nullproc(proc_list *proc)
{
 for (; proc != ((void*)0); proc = proc->next) {
  if (streq(proc->proc_num, "0")) {
   return (1);
  }
 }
 return (0);
}
