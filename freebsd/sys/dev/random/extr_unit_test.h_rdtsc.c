
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static __inline uint64_t
rdtsc(void)
{
 uint32_t low, high;

 __asm __volatile("rdtsc" : "=a" (low), "=d" (high));
 return (low | ((uint64_t)high << 32));
}
