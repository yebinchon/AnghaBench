
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmodule {int dummy; } ;


 int MAX_CPU_SAMPLES ;
 int cpus_load_timer ;
 int get_cpus_samples ;
 int timer_start_repeat (int,int,int ,int *,struct lmodule*) ;

void
start_processor_tbl(struct lmodule *mod)
{







 cpus_load_timer = timer_start_repeat(100, 100 * 60 / MAX_CPU_SAMPLES,
     get_cpus_samples, ((void*)0), mod);
}
