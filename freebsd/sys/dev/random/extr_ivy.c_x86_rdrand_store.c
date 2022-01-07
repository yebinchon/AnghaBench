
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int RETRY_COUNT ;

__attribute__((used)) static int
x86_rdrand_store(u_long *buf)
{
 u_long rndval;
 int retry;

 retry = RETRY_COUNT;
 __asm __volatile(
     "1:\n\t"
     "rdrand	%1\n\t"
     "jc		2f\n\t"
     "dec	%0\n\t"
     "jne	1b\n\t"
     "2:"
     : "+r" (retry), "=r" (rndval) : : "cc");
 *buf = rndval;
 return (retry);
}
