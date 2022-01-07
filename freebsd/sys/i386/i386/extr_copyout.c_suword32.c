
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int suword (void volatile*,int ) ;

int
suword32(volatile void *base, int32_t word)
{

 return (suword(base, word));
}
