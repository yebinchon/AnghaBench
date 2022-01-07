
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct thread {int dummy; } ;
struct TYPE_2__ {int ts_estcpu; } ;


 TYPE_1__* td_get_sched (struct thread*) ;

u_int
sched_estcpu(struct thread *td)
{

 return (td_get_sched(td)->ts_estcpu);
}
