
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int suword (void volatile*,long) ;

int
suword32(volatile void *addr, int32_t word)
{
 return (suword(addr, (long)word));
}
