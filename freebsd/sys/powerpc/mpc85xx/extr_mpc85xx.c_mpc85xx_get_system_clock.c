
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mpc85xx_get_platform_clock () ;

uint32_t
mpc85xx_get_system_clock(void)
{
 uint32_t freq;

 freq = mpc85xx_get_platform_clock();

 return (freq / 2);
}
