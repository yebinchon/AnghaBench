
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * td_turnstile; int td_contested; } ;
struct TYPE_3__ {int tc_lock; int tc_turnstiles; } ;


 int LIST_INIT (int *) ;
 int MTX_SPIN ;
 int TC_TABLESIZE ;
 int mtx_init (int *,char*,int *,int ) ;
 int td_contested_lock ;
 TYPE_2__ thread0 ;
 TYPE_1__* turnstile_chains ;

void
init_turnstiles(void)
{
 int i;

 for (i = 0; i < TC_TABLESIZE; i++) {
  LIST_INIT(&turnstile_chains[i].tc_turnstiles);
  mtx_init(&turnstile_chains[i].tc_lock, "turnstile chain",
      ((void*)0), MTX_SPIN);
 }
 mtx_init(&td_contested_lock, "td_contested", ((void*)0), MTX_SPIN);
 LIST_INIT(&thread0.td_contested);
 thread0.td_turnstile = ((void*)0);
}
