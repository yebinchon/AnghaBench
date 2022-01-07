
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile uint32_t ;



uint32_t
ccsr_read4(uintptr_t addr)
{
 volatile uint32_t *ptr = (void *)addr;

 return (*ptr);
}
