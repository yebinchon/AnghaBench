
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct pvclock_vcpu_time_info {int dummy; } ;


 int PVCLOCK_FLAG_TSC_STABLE ;
 int atomic_cmpset_64 (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic_load_acq_64 (int *) ;
 int pvclock_last_cycles ;
 int pvclock_read_time_info (struct pvclock_vcpu_time_info*,scalar_t__*,int*) ;

uint64_t
pvclock_get_timecount(struct pvclock_vcpu_time_info *ti)
{
 uint64_t now, last;
 uint8_t flags;

 pvclock_read_time_info(ti, &now, &flags);

 if (flags & PVCLOCK_FLAG_TSC_STABLE)
  return (now);






 do {
  last = atomic_load_acq_64(&pvclock_last_cycles);
  if (last > now)
   return (last);
 } while (!atomic_cmpset_64(&pvclock_last_cycles, last, now));

 return (now);
}
