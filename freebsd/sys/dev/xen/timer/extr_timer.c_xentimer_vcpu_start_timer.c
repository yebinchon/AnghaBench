
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vcpu_set_singleshot_timer {scalar_t__ flags; int timeout_abs_ns; } ;


 int HYPERVISOR_vcpu_op (int ,int,struct vcpu_set_singleshot_timer*) ;
 int VCPUOP_set_singleshot_timer ;

__attribute__((used)) static int
xentimer_vcpu_start_timer(int vcpu, uint64_t next_time)
{
 struct vcpu_set_singleshot_timer single;

 single.timeout_abs_ns = next_time;

 single.flags = 0;
 return (HYPERVISOR_vcpu_op(VCPUOP_set_singleshot_timer, vcpu, &single));
}
