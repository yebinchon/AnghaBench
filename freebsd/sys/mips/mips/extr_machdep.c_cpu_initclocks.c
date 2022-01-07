
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_initclocks_bsp () ;
 int platform_initclocks () ;

void
cpu_initclocks(void)
{

 platform_initclocks();
 cpu_initclocks_bsp();
}
