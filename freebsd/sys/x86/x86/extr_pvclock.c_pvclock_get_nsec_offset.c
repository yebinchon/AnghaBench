
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pvclock_vcpu_time_info {int tsc_shift; int tsc_to_system_mul; scalar_t__ tsc_timestamp; } ;


 scalar_t__ pvclock_scale_delta (scalar_t__,int ,int ) ;
 scalar_t__ rdtsc () ;

__attribute__((used)) static uint64_t
pvclock_get_nsec_offset(struct pvclock_vcpu_time_info *ti)
{
 uint64_t delta;

 delta = rdtsc() - ti->tsc_timestamp;

 return (pvclock_scale_delta(delta, ti->tsc_to_system_mul,
     ti->tsc_shift));
}
