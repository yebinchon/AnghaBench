
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vcpu_info {int dummy; } ;
struct TYPE_2__ {struct vcpu_info* vcpu_info; } ;


 TYPE_1__* HYPERVISOR_shared_info ;
 int NSEC_IN_USEC ;
 scalar_t__ xen_fetch_vcpu_time (struct vcpu_info*) ;

void
xen_delay(int n)
{
 struct vcpu_info *vcpu = &HYPERVISOR_shared_info->vcpu_info[0];
 uint64_t end_ns;
 uint64_t current;

 end_ns = xen_fetch_vcpu_time(vcpu);
 end_ns += n * NSEC_IN_USEC;

 for (;;) {
  current = xen_fetch_vcpu_time(vcpu);
  if (current >= end_ns)
   break;
 }
}
