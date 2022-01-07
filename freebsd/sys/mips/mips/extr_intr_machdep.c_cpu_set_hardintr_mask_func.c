
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_intr_mask_t ;


 int hardintr_mask_func ;

void
cpu_set_hardintr_mask_func(cpu_intr_mask_t func)
{

 hardintr_mask_func = func;
}
