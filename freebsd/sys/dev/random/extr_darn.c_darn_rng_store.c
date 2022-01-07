
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int RETRY_COUNT ;

__attribute__((used)) static inline int
darn_rng_store(u_long *buf)
{
 u_long rndval;
 int retry;

 for (retry = RETRY_COUNT; retry > 0; --retry) {
      __asm __volatile(".long 0x7c0105e6 | (%0 << 21)" :
          "+r"(rndval));
  if (rndval != ~0)
   break;
 }

 *buf = rndval;
 return (retry);
}
