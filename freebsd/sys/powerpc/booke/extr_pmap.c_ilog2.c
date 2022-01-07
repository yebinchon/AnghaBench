
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
ilog2(unsigned long num)
{
 long lz;





 __asm ("cntlzw %0, %1" : "=r" (lz) : "r" (num));
 return (31 - lz);

}
