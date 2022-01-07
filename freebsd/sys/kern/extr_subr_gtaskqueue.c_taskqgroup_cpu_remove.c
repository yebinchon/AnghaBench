
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskqgroup {TYPE_1__* tqg_queue; } ;
struct TYPE_2__ {int tgc_taskq; } ;


 int gtaskqueue_free (int ) ;

__attribute__((used)) static void
taskqgroup_cpu_remove(struct taskqgroup *qgroup, int idx)
{

 gtaskqueue_free(qgroup->tqg_queue[idx].tgc_taskq);
}
