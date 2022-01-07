
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rdtsc () ;

__attribute__((used)) static __inline uint64_t
get_cyclecount(void)
{

 return (rdtsc());
}
