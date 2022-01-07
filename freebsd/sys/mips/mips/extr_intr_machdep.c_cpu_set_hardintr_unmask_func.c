
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_intr_unmask_t ;


 int hardintr_unmask_func ;

void
cpu_set_hardintr_unmask_func(cpu_intr_unmask_t func)
{

 hardintr_unmask_func = func;
}
