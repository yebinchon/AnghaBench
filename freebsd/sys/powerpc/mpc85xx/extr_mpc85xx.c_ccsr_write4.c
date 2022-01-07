
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int powerpc_iomb () ;

void
ccsr_write4(uintptr_t addr, uint32_t val)
{
 volatile uint32_t *ptr = (void *)addr;

 *ptr = val;
 powerpc_iomb();
}
