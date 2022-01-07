
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int cpu_sleep () ;

void
powermac_sleep(platform_t platform)
{

 *(unsigned long *)0x80 = 0x100;
 cpu_sleep();
}
