
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* early_clock_source_init ) () ;} ;


 int MTX_NOPROFILE ;
 int MTX_SPIN ;
 int clock_lock ;
 TYPE_1__ init_ops ;
 int mtx_init (int *,char*,int *,int) ;
 int stub1 () ;

void
clock_init(void)
{

 mtx_init(&clock_lock, "clk", ((void*)0), MTX_SPIN | MTX_NOPROFILE);

 init_ops.early_clock_source_init();
}
