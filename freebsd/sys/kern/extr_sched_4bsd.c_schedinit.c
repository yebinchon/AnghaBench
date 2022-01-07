
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ts_slice; } ;
struct TYPE_4__ {int * td_lock; } ;


 int MTX_RECURSE ;
 int MTX_SPIN ;
 int mtx_init (int *,char*,int *,int) ;
 int sched_lock ;
 int sched_slice ;
 TYPE_2__* td_get_sched (TYPE_1__*) ;
 TYPE_1__ thread0 ;

void
schedinit(void)
{




 thread0.td_lock = &sched_lock;
 td_get_sched(&thread0)->ts_slice = sched_slice;
 mtx_init(&sched_lock, "sched lock", ((void*)0), MTX_SPIN | MTX_RECURSE);
}
