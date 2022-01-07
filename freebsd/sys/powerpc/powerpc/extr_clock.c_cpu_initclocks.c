
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_initclocks_bsp () ;
 int decr_tc_init () ;

void
cpu_initclocks(void)
{

 decr_tc_init();
 cpu_initclocks_bsp();
}
