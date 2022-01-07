
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pvclock_vcpu_time_info {unsigned long long tsc_to_system_mul; int tsc_shift; } ;



uint64_t
pvclock_tsc_freq(struct pvclock_vcpu_time_info *ti)
{
 uint64_t freq;

 freq = (1000000000ULL << 32) / ti->tsc_to_system_mul;

 if (ti->tsc_shift < 0)
  freq <<= -ti->tsc_shift;
 else
  freq >>= ti->tsc_shift;

 return (freq);
}
