
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct pvclock_vcpu_time_info {int version; int flags; scalar_t__ system_time; } ;


 scalar_t__ pvclock_get_nsec_offset (struct pvclock_vcpu_time_info*) ;
 int rmb () ;

__attribute__((used)) static void
pvclock_read_time_info(struct pvclock_vcpu_time_info *ti,
    uint64_t *cycles, uint8_t *flags)
{
 uint32_t version;

 do {
  version = ti->version;
  rmb();
  *cycles = ti->system_time + pvclock_get_nsec_offset(ti);
  *flags = ti->flags;
  rmb();
 } while ((ti->version & 1) != 0 || ti->version != version);
}
